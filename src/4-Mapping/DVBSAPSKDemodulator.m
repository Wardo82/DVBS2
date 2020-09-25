classdef (StrictDefaults)DVBSAPSKDemodulator < comm.internal.DVBSAPSKBase
%DVBSAPSKDemodulator Demodulate using APSK method specified in DVB
%Satellite Communication Standard
%    DVBSAPSKDEMOD = comm.internal.DVBSAPSKDemodulator creates a
%    demodulator System object, DVBSAPSKDEMOD. This object demodulates the
%    input signal using the amplitude phase shift keying (APSK) method
%    specified in DVB standard - DVBS2.
%
%    DVBSAPSKDEMOD = comm.internal.DVBSAPSKDemodulator creates an DVBSAPSK
%    demodulator object, DVBSAPSKDEMOD, with the specified property Name
%    set to the specified Value. You can specify additional name-value pair
%    arguments in any order as (Name1,Value1,...,NameN,ValueN).
%
%    Step method syntax:
%   
%    Y = step(DVBSAPSKDEMOD,X) demodulates the input data, X, with the
%    DVBSAPSK demodulator System object, DVBSAPSKDEMOD, and returns, Y.
%    Input X can be a vector or a matrix with double or single precision
%    data type. Depending on the OutputType and DecisionType property
%    values, output Y can be integer or bit valued or log-likelihood
%    ratios.
%
%    Y = step(DVBSAPSKDEMOD,X,VAR) uses soft decision demodulation and
%    noise variance VAR. This syntax applies when you set the OutputType
%    property to 'Bit', the DecisionType property to 'Approximate
%    log-likelihood ratio' or 'Log-likelihood ratio', and the
%    VarianceSource property to 'Input port'. The data type of input VAR
%    must be double or single precision. Input VAR can be a scalar or a row
%    vector with number of elements same as that of number of columns in
%    input X.
%
%    System objects may be called directly like a function instead of using
%    the step method. For example, y = step(obj, x) and y = obj(x) are
%    equivalent.
%
%    DVBSAPSKDemodulator methods:
%
%    step     - Demodulate input using DVBSAPSK method (see above)
%    release  - Allow property value and input characteristics changes
%    clone    - Create DVBSAPSK demodulator object with same
%               property values
%    isLocked - Locked status (logical)
%
%   DVBSAPSKModulator properties:
%
%   FrameLength          - Frame length supported by the DVBS2 or DVBS2X
%                          standard.
%   ModulationOrder      - Number of points in signal constellation.
%   CodeIdentifier       - LDPC code identifier which specifies the
%                          constellation parameters.
%   NormalizationMethod  - Constellation amplitude scaling.
%   OutputType           - Type of output
%   DecisionType         - Demodulation decision method for bit output
%   VarianceSource       - Source of noise variance
%   NoiseVariance        - Noise variance
%   OutputDataType       - Output data type
%


    % Public, non-tunable properties
    properties(Nontunable)

        %OutputType Output type
        %   Specify the output type as 'Integer' | 'Bit'. When you set this
        %   property to 'Integer', the object outputs a column or a matrix
        %   of size equal to the input data size, that contains integer
        %   symbol values between 0 to Modulation order-1. When you set
        %   this property to 'Bit', the object outputs binary values or
        %   soft bits. The number of rows in the output is log2(Modulation
        %   order) times the number of rows in input X. The default value
        %   is 'Integer'.
        OutputType = 'Integer';

        %DecisionType Decision type
        %   Specify the decision type the object uses as one of 'Hard
        %   decision' | 'Log-likelihood ratio' | 'Approximate
        %   log-likelihood ratio'. The default is 'Hard decision'. When the
        %   OutputType property is 'Integer' the object always performs
        %   hard decision demodulation. This property applies when you set
        %   the OutputType property to 'Bit'.
        DecisionType = 'Hard decision';

        %OutputDataTypeInt Output data type
        %   Specify the output data type as 'double' | 'single' | 'uint8' |
        %   'uint16' | 'uint32' | 'int8' | 'int16' | 'int32'. This property
        %   applies when OutputType property is set to 'Integer'. The
        %   default value is double.
        OutputDataTypeInt = 'double';

        %OutputDataTypeBit Output data type
        %   Specify the output data type as 'double' | 'single' | 'uint8' |
        %   'uint16' | 'uint32' | 'int8' | 'int16' | 'int32' | 'logical'.
        %   This property applies when you set the OutputType property to
        %   'Bit' and DecisionType to 'Hard decision'. The default value is
        %   double.
        OutputDataTypeBit = 'double';

        %VarianceSource Noise variance source
        %   Specify the source of the noise variance as one of 'Property' |
        %   'Input port'. The default is 'Property'. This property applies
        %   when you set the OutputType property to 'Bit' and the
        %   DecisionType property to 'Log-likelihood ratio' or 'Approximate
        %   log-likelihood ratio'.
        VarianceSource = 'Property';

        %NoiseVariance Noise variance
        %   Specify the noise variance, as a positive real scalar or vector
        %   with number of columns equal to that of number of columns in
        %   input X. This property applies when you set the OutputType
        %   property to 'Bit', the DecisionType property to 'Log-likelihood
        %   ratio' or 'Approximate log-likelihood ratio' and the
        %   VarianceSource property to 'Property'. The default value is 1.
        NoiseVariance = 1;
    end

    properties (SetAccess = private, Nontunable)
        %OutputDataTypeSoft Output data type
        %   Output data type is 'Same as input' for soft demodulation.This
        %   property applies when you set the OutputType property to 'Bit'
        %   and DecisionType to 'Log-likelihood ratio' | 'Approximate
        %   Log-likelihood ratio'.
        OutputDataTypeSoft = 'Same as input';
    end

    properties(Constant, Hidden)
        OutputTypeSet = matlab.system.StringSet({'Integer', 'Bit'});
        DecisionTypeSet = comm.CommonSets.getSet('DecisionOptions');
        VarianceSourceSet = comm.CommonSets.getSet('SpecifyInputs');
        OutputDataTypeIntSet = matlab.system.StringSet({'double', ...
            'single', 'int8', 'uint8', 'int16', 'uint16', 'int32', ...
            'uint32'});
        OutputDataTypeBitSet = matlab.system.StringSet({'double', ...
            'single', 'int8', 'uint8', 'int16', 'uint16', 'int32', ...
            'uint32', 'logical'});
    end

    % Pre-computed constants
    properties(Access = private, Hidden)
        constellation;
        constellationTemp;
        averagePow;
    end

    properties(Access = private, Nontunable, Hidden)
        Mnew;
        MsplitCast;
        isOutputInt;
        isOutputBit;
        isOutputLLR;
    end

    properties(Access = private, Dependent)
        OutputDataType;
    end

%=========================================================================
    methods
        % Constructor
        function obj = DVBSAPSKDemodulator(varargin)
            % Support name-value pair arguments when constructing object
            setProperties(obj,nargin,varargin{:})
        end

        function set.NoiseVariance(obj,val)
            validateattributes(val, {'single','double'}, ...
                {'vector', 'real', 'positive', 'nonnan', 'finite'}, ...
                'set.NoiseVariance', 'NoiseVariance');
            obj.NoiseVariance = val;
        end

        function val = get.OutputDataType(obj)
            if strcmp(obj.OutputType,'Integer')
                val = obj.OutputDataTypeInt;
            else
                val = obj.OutputDataTypeBit;
            end
        end
    end
%=========================================================================
    methods (Access = protected)

        function flag = isInactivePropertyImpl(obj, prop)

            isSoft = strcmp(obj.OutputType,'Bit') &&  ...
                (strcmpi(obj.DecisionType,'Log-likelihood ratio') || ...
                strcmpi(obj.DecisionType,'Approximate log-likelihood ratio'));

            flag = isInactivePropertyImpl@comm.internal.DVBSAPSKBase(obj, prop);

            switch prop
                case 'DecisionType'
                    flag = ~strcmpi(obj.OutputType,'Bit');
                case 'VarianceSource'
                    flag = ~isSoft;
                case 'NoiseVariance'
                    flag = ~ (isSoft && strcmpi(obj.VarianceSource,'Property'));
                case 'OutputDataTypeInt'
                    flag = ~ strcmpi(obj.OutputType,'Integer');
                case 'OutputDataTypeBit'
                    flag = ~ (strcmpi(obj.OutputType,'Bit') && ...
                        strcmpi(obj.DecisionType, 'Hard decision'));
                case 'OutputDataTypeSoft'
                    flag = ~isSoft;
            end
        end
%=========================================================================
        function validatePropertiesImpl(obj)
            validatePropertiesImpl@comm.internal.DVBSAPSKBase(obj)
            if strcmp(obj.OutputType,'Integer')
                if strcmp(obj.MSimulinkS2XN,'256') && ...
                        strcmpi(obj.OutputDataTypeInt,'int8')
                    coder.internal.error('comm:apskdemodshared:DataTypeBound');
                end
            end
        end
    end
%=========================================================================
    methods (Access = protected)

        function validateInputsImpl(obj,x,varargin)

            validateattributes(x, {'double','single'}, {'2d'}, ...
                class(obj), 'Data input');

            if strcmp(obj.VarianceSource,'Input port')
                validateattributes(varargin{1}, {'single','double'}, ...
                    {'vector','real'}, class(obj), 'NoiseVariance');
            end
        end
%=========================================================================
        function s = saveObjectImpl(obj)

            s = saveObjectImpl@comm.internal.DVBSAPSKBase(obj);
            if isLocked(obj)
                s.constellation     = obj.constellation;
                s.constellationTemp = obj.constellationTemp;
                s.isOutputInt       = obj.isOutputInt;
                s.isOutputBit       = obj.isOutputBit;
                s.isOutputLLR       = obj.isOutputLLR;
                s.Mnew              = obj.Mnew;
                s.MsplitCast        = obj.MsplitCast;
                s.averagePow        = obj.averagePow;
            end
        end

        function loadObjectImpl(obj,s,wasLocked)
            if wasLocked
                obj.constellation     = s.constellation;
                obj.constellationTemp = s.constellationTemp;
                obj.MsplitCast        = s.MsplitCast;
                obj.Mnew              = s.Mnew;
                obj.isOutputInt       = s.isOutputInt;
                obj.isOutputBit       = s.isOutputBit;
                obj.isOutputLLR       = s.isOutputLLR;
                obj.averagePow        = s.averagePow;
            end
            loadObjectImpl@comm.internal.DVBSAPSKBase(obj,s,wasLocked);
        end
    end
%=========================================================================
    methods(Access = protected)

        function setupImpl(obj,x,varargin)

            setupImpl@comm.internal.DVBSAPSKBase(obj,x);

            if isa(real(x),'single')
                obj.Mnew      = single(obj.M);
                obj.MsplitCast = single(obj.Msplit);
            else
                obj.Mnew = double(obj.M);
                obj.MsplitCast = double(obj.Msplit);
            end

            if obj.irregConstFlag
                obj.constellation =  comm.internal.apsk.constLUTgenDVBS( ...
                    obj.Mnew,obj.codeIDF);
            else
                 obj.constellation =  comm.internal.apsk.mapper(obj.MsplitCast, ...
                    cast(obj.radii,'like',obj.MsplitCast), ...
                    cast(obj.phaseOffset,'like',obj.MsplitCast));
            end

            if strcmp(obj.NormalizationMethod,'Unit average power')
                obj.averagePow = mean(abs( obj.constellation).^2);
                obj.constellationTemp =  obj.constellation/sqrt(obj.averagePow);
            else
                obj.constellationTemp =  obj.constellation;
            end

            obj.isOutputInt = strcmp(obj.OutputType,'Integer');
            obj.isOutputBit = strcmp(obj.OutputType, 'Bit') && ...
                strcmp(obj.DecisionType,'Hard decision');
            obj.isOutputLLR = strcmp(obj.OutputType, 'Bit') && ...
                strcmp(obj.DecisionType, 'Log-likelihood ratio');

        end

        function y = stepImpl(obj,x,varargin)

            if strcmp(obj.VarianceSource,'Input port')
                validateattributes(varargin{1}, {'single','double'}, ...
                    {'vector', 'real', 'positive', 'nonnan', 'finite'}, ...
                    mfilename, 'NoiseVariance');
                noiseVarTemp = varargin{1};
            else
                noiseVarTemp = obj.NoiseVariance;
            end

            validateattributes(x, {'double','single'}, {'nonnan','finite'}, ...
                         mfilename, 'Data input');

            if strcmp(obj.NormalizationMethod,'Unit average power')
                if obj.isOutputInt || obj.isOutputBit
                    xnew = x.*sqrt(obj.averagePow);
                else
                    xnew = x;
                end
            else
                xnew = x;
            end

            if obj.isOutputInt || obj.isOutputBit
                if obj.M == 256 && obj.irregConstFlag

                    intY = comm.internal.apsk.dvbs256Demapper(xnew, ...
                        cast(obj.constellation, 'like', x), ...
                        obj.codeIDF);

                elseif  obj.M == 128

                    intY = comm.internal.apsk.dvbs128Demapper(xnew, ...
                        obj.MsplitCast, cast(obj.radii, 'like', obj.MsplitCast), ...
                        cast(obj.constellation, 'like', x));

                elseif (obj.M == 32 && obj.irregConstFlag) || obj.M == 8

                    intY = comm.internal.apsk.dvbsIrregConstDemapper(xnew, ...
                        obj.Mnew, obj.MsplitCast, ...
                        cast(obj.radii, 'like', obj.MsplitCast), ...
                        cast(obj.phaseOffset, 'like', obj.MsplitCast));

                elseif (obj.M == 16 && obj.irregConstFlag)

                    intY = comm.internal.apsk.dvbs16IrregConstDemapper( ...
                        xnew, obj.Mnew, obj.MsplitCast, ...
                        cast(obj.radii, 'like', obj.MsplitCast));
                else
                    % demapper for regular 16, 32, 64 & 256 APSK constellations
                    intY = comm.internal.apsk.demapper(xnew, obj.MsplitCast, ...
                        cast(obj.radii,'like',obj.MsplitCast), ...
                        cast(obj.phaseOffset,'like',obj.MsplitCast), ...
                        cast(obj.symbolOrderVector,'like',obj.MsplitCast));
                end

                if obj.isOutputBit
                    xRawDType = comm.internal.utilities.convertInt2Bit(intY, ...
                        log2(obj.M));
                else
                    xRawDType = intY;
                end

                y = cast(xRawDType, obj.OutputDataType);

            elseif obj.isOutputLLR

                y = comm.internal.apsk.computeLLRfcn(x, obj.M, ...
                    obj.symbolOrderVector, obj.constellationTemp, noiseVarTemp);
            else

                y  = comm.internal.apsk.computeApproxLLR(x, obj.M, ...
                    obj.symbolOrderVector, obj.constellationTemp, noiseVarTemp);

            end
        end
%=========================================================================
        function out = getOutputSizeImpl(obj)
            % Return size for each output port
            size = propagatedInputSize(obj,1);
            if strcmp(obj.OutputType,'Integer')
                out = size;
            else
                M = real(str2double(obj.MSimulinkS2));
            end
                out = [size(1)*log2(M) size(2)];
            end
        end

        function varargout = getOutputDataTypeImpl(obj)
            softout = strcmp(obj.OutputType,'Bit') && ...
                (strcmp(obj.DecisionType, 'Log-likelihood ratio') || ...
                strcmp(obj.DecisionType, 'Approximate log-likelihood ratio'));
            if softout
                varargout = {propagatedInputDataType(obj, 1)};
            else
                varargout = {obj.OutputDataType};
            end
        end

        function num = getNumInputsImpl(obj)
            secport = strcmp(obj.OutputType, 'Bit') && ...
                ((strcmp(obj.DecisionType, 'Log-likelihood ratio') || ...
                strcmp(obj.DecisionType, ...
                'Approximate log-likelihood ratio')) && ...
                strcmp(obj.VarianceSource, 'Input port'));
            num = 1+secport;
        end

        function varargout = isOutputFixedSizeImpl(~)
            varargout{1} = true;
        end
%=========================================================================

        function maskDisplayCmds = getMaskDisplayImpl(obj)
            % plot figure
            maskDisplayCmds = {'staX = 0:120;'};
            maskDisplayCmds{end+1} = 'staY = 80+[5*sin(2*pi*(0:1/12:4)) rectpulse([5 -5 5],24)];';
            maskDisplayCmds{end+1} = 'plot(-10,0,130,95,staX,staY)';
            maskDisplayCmds{end+1} = 'plot([48 48], [88 72])';
            % Show text
            maskDisplayCmds{end+1} = 'icon = ''DVBS-APSK'';';
            maskDisplayCmds{end+1} = 'disp(icon)';

            secport = strcmp(obj.OutputType, 'Bit') && ...
                ((strcmp(obj.DecisionType, 'Log-likelihood ratio') || ...
                strcmp(obj.DecisionType, 'Approximate log-likelihood ratio')) && ...
                strcmp(obj.VarianceSource, 'Input port'));

            if secport
                maskDisplayCmds{end+1} = 'port_label(''input'',1,''In'')';
                maskDisplayCmds{end+1} = 'port_label(''input'',2,''Var'')';
            end
        end

        function varargout = getOutputNamesImpl(~)
            varargout = {''};
        end

        function varargout = isOutputComplexImpl(~)
            varargout = {false};
        end
    end
%=========================================================================

    methods(Static, Access = protected)
        %% Simulink customization functions
        function header = getHeaderImpl
            % Define header panel for System block dialog
            header = matlab.system.display.Header('comm.internal.DVBSAPSKDemodulator', ...
                'Title','DVBS-APSK Demodulator Baseband', 'Text', ...
                sprintf(['Demodulate the DVB standard specific amplitude phase ', ...
                'shift keying modulated input signal. This block accepts a ', ...
                'scalar, a vector or a matrix input signal.\n\n', ...
                'For fastest execution:\n', ...
                'Set ''Simulate using'' to ''Code generation'' when:\n', ...
                '1.''Output type'' is ''Integer''\n', ...
                '2.''Output type'' is ''Bit'' and ''Decision type'' is ''Hard decision''\n', ...
                'Set ''Simulate using'' to ''Interpreted execution'' when:\n', ...
                '1.''Output type'' is ''Bit'' and ''Decision type'' is ''Log-likelihood ratio''\n', ...
                '2.''Output type'' is ''Bit'' and ''Decision type'' is ''Approximate log-likelihood ratio''']));
        end

        function group = getPropertyGroupsImpl
            % Define property section(s) for System block dialog
            demodulationGroup = matlab.system.display.Section( ...
                'PropertyList', {'OutputType', 'DecisionType', ...
                'VarianceSource', 'NoiseVariance', 'OutputDataTypeInt', ...
                'OutputDataTypeBit', 'OutputDataTypeSoft'});
            commonGroup = getPropertyGroupsImpl@comm.internal.DVBSAPSKBase;
            group = [commonGroup demodulationGroup];
        end
    end
end
