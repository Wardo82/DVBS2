classdef psk_modulator < matlab.System
    % psk modulator Phase Shift Keying of input message.
    
    % NOTE: When renaming the class name untitled2, the file name
    % and constructor name must be updated to use the class name.
    %
    % This template includes most, but not all, possible properties, attributes,
    % and methods that you can implement for a System object in Simulink.

    % Public, tunable properties
    properties

    end

    % Public, non-tunable properties
    properties(Nontunable)
        bits_per_symbol = 3;
        amplitude = 1;
        frame_size = 64800;
    end

    properties(DiscreteState)

    end

    % Pre-computed constants
    properties(Access = private)

    end

    methods
        % Constructor
        function obj = psk_modulator(varargin)
            % Support name-value pair arguments when constructing object
            setProperties(obj,nargin,varargin{:})
        end
    end

    methods(Access = protected)
        %% Common functions
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
        end

        function [inphase, quadrature] = stepImpl(obj, fec_frame)
            % Implement algorithm. 
            [inphase, quadrature] = psk_modulate(fec_frame, obj.bits_per_symbol, obj.amplitude);
        end

        %% Backup/restore functions
        function loadObjectImpl(obj,s,wasLocked)
            % Set properties in object obj to values in structure s

            % Set private and protected properties
            % obj.myproperty = s.myproperty; 

            % Set public properties and states
            loadObjectImpl@matlab.System(obj,s,wasLocked);
        end

        %% Simulink functions
        function ds = getDiscreteStateImpl(obj)
            % Return structure of properties with DiscreteState attribute
            ds = struct([]);
        end

        function [i, q] = getOutputSizeImpl(obj)
            % Return size for each output port
            i = [obj.frame_size/obj.bits_per_symbol 1];
            q = i;
        end

        function [i, q] = getOutputDataTypeImpl(obj)
            % Return data type for each output port
            i  = 'double';
            q  = i;
        end

        function [out, out2] = isOutputComplexImpl(obj)
            % Return true for each output port with complex data
            out  = false;
            out2 = out;
        end

        function [out, out2] = isOutputFixedSizeImpl(obj)
            % Return true for each output port with fixed size
            out  = true;
            out2 = out;
            % Example: inherit fixed-size status from first input port
            % out = propagatedInputFixedSize(obj,1);
        end
    end

    methods(Static, Access = protected)
        %% Simulink customization functions
        function header = getHeaderImpl
            % Define header panel for System block dialog
            header = matlab.system.display.Header(mfilename("class"));
        end

        function group = getPropertyGroupsImpl
            % Define property section(s) for System block dialog
            group = matlab.system.display.Section(mfilename("class"));
        end
    end
end
