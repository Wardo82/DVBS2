classdef DVBSAPSKBase < matlab.System & matlab.system.mixin.Propagates ...
        & matlab.system.mixin.internal.CustomIcon
    %DVBSAPSKBase Base class for DVBSAPSKModulator and DVBSAPSKDemodulator
  
    % Copyright 2018 The MathWorks, Inc.

    %#codegen

    % Common properties
    properties(Nontunable)

        %FrameLength  Frame length
        %   Specify the frame length as 'Normal' | 'Short'. The
        %   default value is 'Normal'.
        FrameLength = 'Normal';
        
        %MSimulinkS2  Modulation order
        %   Specify the modulation order as '16' | '32'. The default value
        %   is 16.
        MSimulinkS2 = '16';
        
        %CodeIDF16S2N Code identifier
        %   Specify the code identifier as '2/3' | '3/4' | '4/5' | '5/6' |
        %   '8/9' | '9/10' which specifies the radii ratio values and the
        %   number of points to be taken on each circle. This property
        %   applies when FrameLength as
        %   'Normal' and MSimulinkS2 as '16'. The default value is '2/3'.
        CodeIDF16S2N = '2/3';
        
        %CodeIDF32 S2N Code identifier
        %   Specify the code identifier as '3/4' | '4/5' | '5/6' | '8/9' |
        %   '9/10' which specifies the radii ratio values and the number of
        %   points to be taken on each circle. This property applies when
        %   FrameLength property is set as 'Normal' and
        %   MSimulinkS2 as '32'. The default value is '3/4'.
        CodeIDF32S2N = '3/4';
        
        %CodeIDF16S2S Code identifier
        %   Specify the code identifier as '2/3' | '3/4' | '4/5' | '5/6' |
        %   '8/9' which specifies the radii ratio values and the number of
        %   points to be taken on each circle. This property applies when
        %   FrameLength property is set as 'Short' and
        %   MSimulinkS2 as '16'. The default value is '2/3'.
        CodeIDF16S2S = '2/3';
        
        %CodeIDF32S2S Code identifier
        %   Specify the code identifier as '3/4' | '4/5' | '5/6' | '8/9'
        %   which specifies the radii ratio values and the number of points
        %   to be taken on each circle. This property applies when
        %   FrameLength property is set as 'Short' and
        %   MSimulinkS2 as '32'. The default value is '3/4'.
        CodeIDF32S2S = '3/4';
        
        %NormalizationMethod Constellation scaling
        %   Specify the method used to scale the constellation amplitude as
        %   either 'Outer radius as 1'| 'Unit average power'. The
        %   default value is 'Outer radius as 1'.
        NormalizationMethod = 'Outer radius as 1';

    end

    properties(SetAccess = private, Nontunable)
        %MSimulinkSH Modulation order
        %   Modulation order supported by DVBSH standard with respect to
        %   APSK modulation. This property is a constant value set to 16.
        MSimulinkSH = '16';
    end

    properties(Constant, Hidden)

        FrameLengthSet =  matlab.system.StringSet({'Normal','Short'});
        MSimulinkS2Set = matlab.system.StringSet({'16', '32'});
        CodeIDF16S2NSet = matlab.system.StringSet({'2/3', '3/4', '4/5', ...
            '5/6', '8/9' ,'9/10'});
        CodeIDF32S2NSet = matlab.system.StringSet({'3/4', '4/5', '5/6', ...
            '8/9', '9/10'});
        CodeIDF16S2SSet = matlab.system.StringSet({'2/3', '3/4', '4/5', ...
            '5/6', '8/9' });
        CodeIDF32S2SSet = matlab.system.StringSet({'3/4', '4/5', '5/6', '8/9'});
        NormalizationMethodSet = matlab.system.StringSet({ ...
            'Outer radius as 1', 'Unit average power'});
    end

    properties(Access = protected, Nontunable, Hidden)
        M
        codeIDF;
        irregConstFlag;
        Msplit;
        phaseOffset;
        symbolOrderVector;
    end

    properties(Access = protected, Hidden)
          radii;
    end
%========================================================================
    methods
        % Constructor
        function obj = DVBSAPSKBase(varargin)
            setProperties(obj, nargin, varargin{:});
        end
    end
 %=======================================================================
    methods (Access = protected)
        function flag = isInactivePropertyImpl(obj, prop)
            flag = false;
            switch prop
                case 'CodeIDF16S2N'
                    flag = ~(strcmp(obj.MSimulinkS2, '16') && ...
                        strcmp(obj.FrameLength, 'Normal'));
                case 'CodeIDF16S2S'
                    flag = ~(strcmp(obj.MSimulinkS2, '16') && ...
                        strcmp(obj.FrameLength, 'Short'));
                case 'CodeIDF32S2N'
                    flag = ~(strcmp(obj.MSimulinkS2, '32') && ...
                        strcmp(obj.FrameLength, 'Normal'));
                case 'CodeIDF32S2S'
                    flag = ~(strcmp(obj.MSimulinkS2, '32') && ...
                        strcmp(obj.FrameLength, 'Short'));
            end
        end
 %=======================================================================
        function s = saveObjectImpl(obj)
            s = saveObjectImpl@matlab.System(obj);
            if isLocked(obj)
                s.M = obj.M;
                s.irregConstFlag = obj.irregConstFlag;
                s.codeIDF = obj.codeIDF;
                s.Msplit = obj.Msplit;
                s.radii  = obj.radii;
                s.phaseOffset = obj.phaseOffset;
                s.symbolOrderVector = obj.symbolOrderVector;
            end
        end
        function loadObjectImpl(obj,s,wasLocked)
            if wasLocked
                obj.M = s.M;
                obj.irregConstFlag = s.irregConstFlag;
                obj.codeIDF = s.codeIDF;
                obj.Msplit = s.Msplit;
                obj.radii  = s.radii;
                obj.phaseOffset = s.phaseOffset;
                obj.symbolOrderVector = s.symbolOrderVector;
            end
            loadObjectImpl@matlab.System(obj,s,wasLocked);
        end
    end
 %=======================================================================
    methods (Access = protected)
        function setupImpl(obj, ~)

            obj.M = real(str2double(obj.MSimulinkS2));

                    if strcmp(obj.FrameLength, 'Normal')
                        codeIDFList = {obj.CodeIDF16S2N; obj.CodeIDF32S2N};
                    else
                        codeIDFList = {obj.CodeIDF16S2S; obj.CodeIDF32S2S};
                    end
                    obj.codeIDF = codeIDFList{obj.M/16};
         end
            [obj.Msplit, obj.radii, obj.phaseOffset, obj.symbolOrderVector, ...
                obj.irregConstFlag] = comm.internal.apsk.generateDVBSParams( ...
                obj.M, obj.StdSuffix, obj.codeIDF, obj.FrameLength);
        end
    end
 %=======================================================================
    methods (Static, Access = protected)
        function commonGroup = getPropertyGroupsImpl()
            commonGroup = matlab.system.display.Section(...
                'PropertyList' , {'StdSuffix','FrameLength',  ...
                'MSimulinkS2',  'CodeIDF16S2N', ...
                'CodeIDF32S2N', 'CodeIDF16S2S', 'CodeIDF32S2S', ...
                 'NormalizationMethod'});
        end
    end
end
