classdef scrambler < matlab.System
    % scrambler Add summary here
    %
    % NOTE: When renaming the class name untitled2, the file name
    % and constructor name must be updated to use the class name.
    %
    % This template includes most, but not all, possible properties, attributes,
    % and methods that you can implement for a System object in Simulink.

    % Public, tunable properties
    properties
        Kbch = int32(48408);
        random_seq_polynomial = int32([1 0 0 1 0 1 0 1 0 0 0 0 0 0 0]);
    end

    % Public, non-tunable properties
    properties(Nontunable)

    end

    properties(DiscreteState)

    end

    % Pre-computed constants
    properties(Access = private)

    end

    methods
        % Constructor
        function obj = scrambler(varargin)
            % Support name-value pair arguments when constructing object
            setProperties(obj,nargin,varargin{:})
        end
    end

    methods(Access = protected)
        %% Common functions
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
        end

        function random_frame = stepImpl(obj, frame)
            random_frame = obj.pad_and_scramble(frame);
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties
        end

        %% Backup/restore functions
        function s = saveObjectImpl(obj)
            % Set properties in structure s to values in object obj

            % Set public properties and states
            s = saveObjectImpl@matlab.System(obj);

            % Set private and protected properties
            %s.myproperty = obj.myproperty;
        end

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

        function flag = isInputSizeMutableImpl(obj,index)
            % Return false if input size cannot change
            % between calls to the System object
            flag = false;
        end

        function out = getOutputSizeImpl(obj)
            % Return size for each output port
            out = obj.Kbch;

            % Example: inherit size from first input port
            % out = propagatedInputSize(obj,1);
        end

        function out = getOutputDataTypeImpl(obj)
            % Return data type for each output port
            out = propagatedInputDataType(obj,1);
        end

        function icon = getIconImpl(obj)
            % Define icon for System block
            icon = mfilename("class"); % Use class name
            % icon = "My System"; % Example: text icon
            % icon = ["My","System"]; % Example: multi-line text icon
            % icon = matlab.system.display.Icon("myicon.jpg"); % Example: image file icon
        end
        
        function random_frame = pad_and_scramble(obj, in_frame)
        % Pad and Scramble: Stream adaptation provides padding to complete a constant 
        % length (Kbch bits) BBFRAME and scrambling. Kbch depends on the FEC rate,
        % as reported in table 5. Padding may be applied in circumstances when the
        % user data available for transmission are not sufficient to completely 
        % fill a BBFRAME, or when an integer number of UPs has to be allocated in 
        % a BBFRAME.
            % Pad zeros to the end of the received message
            
            % num_of_pad_bits = obj.Kbch - length(in_frame);
            frame = in_frame; % zeros(num_of_pad_bits, 1)];
            state_registers = int32(obj.random_seq_polynomial);
            % Scramble using PRBS
            random_frame = int32(zeros(size(frame)));
            for tap = 1:obj.Kbch % For each tap no the feedback shift registers
                % The output of the registers is the xor of the last two due to the
                % used polynomial (see standar). PRBS: 1 + x^14 x x^15
                registers_out = bitxor(state_registers(15), state_registers(14));
                % The output of the scrambler block
                random_frame(tap) = bitxor(frame(tap), registers_out);
                % Update registers by shifting their content one place to the right
                for r = length(state_registers):-1:2
                    state_registers(r) = state_registers(r-1);
                end
                state_registers(1) = registers_out;
            end
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
