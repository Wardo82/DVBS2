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
        order = 8;
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

        function [I, Q] = stepImpl(obj, fec_frame)
            % Implement algorithm. 
            num_of_bits = log2(obj.order);
            h = length(fec_frame)/num_of_bits;
            input_size = [h num_of_bits];
            tmp = fi([],1,16,0);
            I = fi(zeros(length(fec_frame)/num_of_bits, 1,'like',tmp));
            Q = fi(zeros(length(fec_frame)/num_of_bits, 1,'like',tmp));
            frame_reshape = reshape(fec_frame, input_size);
            for index = 1:h
                [i, q] = psk_modulate(frame_reshape(index, :), obj.amplitude);
                I(index) = fi(i,1,16,0);
                Q(index) = fi(q,1,16,0);
            end
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

        function [out,out2] = getOutputSizeImpl(obj)
            % Return size for each output port
            out = [obj.frame_size/3 1];
            out2 = [obj.frame_size/3 1];
        end

        function [out,out2] = getOutputDataTypeImpl(obj)
            % Return data type for each output port
            out = 'Fixed';
            out2= 'Fixed';
        end

        function [out,out2] = isOutputComplexImpl(obj)
            % Return true for each output port with complex data
            out = false;
            out2 = false;

            % Example: inherit complexity from first input port
            % out = propagatedInputComplexity(obj,1);
        end

        function [out,out2] = isOutputFixedSizeImpl(obj)
            % Return true for each output port with fixed size
            out = true;
            out2 = true;

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
