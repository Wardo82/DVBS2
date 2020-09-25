classdef (StrictDefaults)DVBSAPSKModulator < comm.internal.DVBSAPSKBase
%DVBSAPSKModulator Modulate using APSK method specified in DVB Satellite
%Communication Standard
%   DVBSAPSKMOD = comm.internal.DVBSAPSKModulator creates a modulator
%   object, DVBSAPSKMOD, that modulates the input using amplitude phase
%   shift keying (APSK) method specified in DVB standard - DVBS2.
%
%   DVBSAPSKMOD = comm.internal.DVBSAPSKModulator(Name,Value) creates a
%   DVBSAPSK modulator object, DVBSAPSKMOD, with the specified property
%   Name set to the specified Value. You can specify additional name-value
%   pair arguments in any order as (Name1,Value1,...,NameN,ValueN).
%
%   Step method syntax:
%
%   Y = step(DVBSAPSKMOD,X) modulates input data, X, with the DVBSAPSK
%   modulator object, DVBSAPSKMOD. It returns the baseband modulated
%   output, Y. 
%
%   System objects may be called directly like a function instead of
%   using the step method. For example, y = step(obj, x) and y = obj(x)
%   are equivalent.
%
%   DVBSAPSKModulator methods:
%
%   step     - Modulate input using DVBSAPSK method
%   release  - Allow property value and input characteristics changes
%   clone    - Create DVBSAPSK modulator object with same
%              property values
%   isLocked - Locked status (logical)
%
%   DVBSAPSKModulator properties:
%
%   FrameLength          - Frame length supported by the DVBS2 or DVBS2X
%                          standard.
%   ModulationOrder      - Number of points in signal constellation.
%   CodeIdentifier       - LDPC code identifier which specifies the
%                          constellation parameters.
%   NormalizationMethod  - Constellation amplitude scaling.
%   OutputDataType       - Output data type
%

    properties(Nontunable)
        
        %OutputDataType Output data type
        %   Specify the output data type as 'double' | 'single'. The
        %   default is 'double'.
        OutputDataType = 'double';
    end

    properties (Constant, Hidden)
        OutputDataTypeSet =  matlab.system.StringSet({'double','single'});
       end

    properties(Access = private, Hidden)
        constellation;
    end

    properties(SetAccess = private, Nontunable, Hidden)
        MCast;
        MsplitCast;
        symbolOrderMap;
    end
%=========================================================================
    methods
        % Constructor
        function obj = DVBSAPSKModulator(varargin)
            % Support name-value pair arguments when constructing object
            setProperties(obj,nargin,varargin{:})
        end
    end
 %========================================================================
    methods(Access = protected)
        function validateInputsImpl(obj,x)

            bitDTypes = {'double','single','int8','uint8','int16','uint16',...
                'int32','uint32','logical'};
            validateattributes(x, bitDTypes,{'real','2d'}, class(obj), ...
                    'Data input');
            M = real(str2double(obj.MSimulinkS2));
            coder.internal.errorIf(mod(size(x, 1), log2(M)) ~= 0, ...
            'comm:apskmodshared:xSizeBit');
        end
  %=======================================================================
        function s = saveObjectImpl(obj)
            s = saveObjectImpl@comm.internal.DVBSAPSKBase(obj);
            if isLocked(obj)
                s.constellation = obj.constellation;
                s.MsplitCast = obj.MsplitCast;
                s.MCast = obj.MCast;
                s.symbolOrderMap = obj.symbolOrderMap;
            end
        end

        function loadObjectImpl(obj,s,wasLocked)
            if wasLocked
                obj.constellation = s.constellation;
                obj.MsplitCast = s.MsplitCast;
                obj.MCast = s.MCast;
                obj.symbolOrderMap = s.symbolOrderMap;
            end
            loadObjectImpl@comm.internal.DVBSAPSKBase(obj,s,wasLocked);
        end
    end
 %========================================================================
    methods(Access = protected)
        function setupImpl(obj)

            setupImpl@comm.internal.DVBSAPSKBase(obj);
            if strcmpi(obj.OutputDataType,'single')
                obj.MCast = single(obj.M);
                obj.MsplitCast = single(obj.Msplit);
            else
                obj.MCast = double(obj.M);
                obj.MsplitCast = double(obj.Msplit);
            end

            if obj.irregConstFlag
                obj.constellation =  ...
                    comm.internal.apsk.constLUTgenDVBS(obj.MCast,obj.codeIDF);
            else

                 obj.constellation =  comm.internal.apsk.mapper(...
                     obj.MsplitCast, cast(obj.radii,'like',obj.MsplitCast), ...
                    cast(obj.phaseOffset,'like',obj.MsplitCast));
            end

            if strcmp(obj.NormalizationMethod,'Unit average power')
                averagePower = mean(abs(obj.constellation).^2);
                 obj.constellation = obj.constellation/sqrt(averagePower);
            end

            binidx = 0:obj.M-1;
            [~, sortidx] = sort(obj.symbolOrderVector);
            obj.symbolOrderMap = binidx(sortidx);
        end

%=========================================================================
        function y = stepImpl(obj,x)

            validateattributes(x, {'numeric', 'logical'}, ...
                    {'nonnan','finite', 'binary'}, mfilename, 'Data input');

                sym = comm.internal.utilities.convertBit2Int(x, log2(obj.M));
           
            msg = obj.symbolOrderMap(sym + 1);
            y = coder.nullcopy(zeros(size(sym), 'like', obj.constellation));
            y(:) = obj.constellation(msg + cast(1, 'like', msg));

        end
%=========================================================================
        function out = getOutputSizeImpl(obj)
            % Return size for each output port
                def = propagatedInputSize(obj,1);
                M = real(str2double(obj.MSimulinkS2));
               
                coder.internal.errorIf(mod(def(1), ...
                      log2(M)) ~= 0, 'comm:apskmodshared:xSizeBit');
                 out = [def(1)/log2(M) def(2)];
        end

        function varargout = isOutputComplexImpl(~)
            varargout = {true};
        end

        function varargout = isOutputFixedSizeImpl(obj) %#ok
            varargout{1} = true;
        end

        function out = getOutputDataTypeImpl(obj)
            out = obj.OutputDataType;
        end

        function varargout = getOutputNamesImpl(~)
            varargout = {''};
        end

        function varargout = getInputNamesImpl(~)
            varargout = {''};
        end

        function maskDisplayCmds = getMaskDisplayImpl(~)
            % plot figure
            maskDisplayCmds = {'staX = 0:120;'};
            maskDisplayCmds{end+1} = 'staY = 80+[rectpulse([5 -5 5],24) 5*sin(2*pi*(0:1/12:4))];';
            maskDisplayCmds{end+1} = 'plot(-10,0,130,95,staX,staY)';
            maskDisplayCmds{end+1} = 'plot([72 72], [88 72])';
            % Show text
            maskDisplayCmds{end+1} = 'icon = ''DVBS-APSK'';';
            maskDisplayCmds{end+1} = 'disp(icon)';
        end
    end
%=========================================================================
    methods(Static, Access = protected)

        function header = getHeaderImpl
            % Define header panel for System block dialog
            header = matlab.system.display.Header('comm.internal.DVBSAPSKModulator', ...
                'Title','DVBS-APSK Modulator Baseband', 'Text', ...
                sprintf(['Modulate the input signal using DVB standard ', ...
                'specific APSK modulation.This block accepts a scalar, a ', ...
                'vector or a matrix input signal.\n\n' ...
                'The input signal can be either bits or integers. When you ', ...
                'set the ''Input type'' parameter to ''Bit'', the input width ', ...
                'must be an integer multiple of the number of bits per symbol.']));
        end

        function group = getPropertyGroupsImpl
            % Define property section(s) for System block dialog
            modulationGroup = matlab.system.display.Section( ...
                'PropertyList', {'InputType','OutputDataType'});
            constVis = comm.internal.apsk.ConstellationVisualizationButton;
            modulationGroup.Actions =  constVis.plotAction;
            commonGroup = getPropertyGroupsImpl@comm.internal.DVBSAPSKBase;
            group = [commonGroup modulationGroup];
        end
    end
end
