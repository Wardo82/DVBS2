classdef receiver_srrc_filter < matlab.System
    % srrc_filter Square root raised cosine filter


    % Public, tunable properties
    properties
        l                    = 21600;
        decimation_factor = 8;
    end

    % Public, non-tunable properties
    properties(Nontunable)

    end

    properties(DiscreteState)

    end

    % Pre-computed constants
    properties(Access = private)
        output_size
    end

    methods
        % Constructor
        function obj = receiver_srrc_filter(varargin)
            % Support name-value pair arguments when constructing object
            setProperties(obj,nargin,varargin{:})
        end
    end

    methods(Access = protected)
        %% Common functions
        function setupImpl(obj, ~)
            % Perform one-time calculations, such as computing constants
            obj.output_size = [obj.l 1];
        end

        function x_filtered = stepImpl(obj, x, coefficients) 
            %output_size = obj.l*obj.interpolation_factor;
            index         = 1:8:8*21600; % Indexes used to decimate
            i_rx_filtered = srrc_filter(x, coefficients);
            i_rx_decimate = i_rx_filtered(index); % Downsample
            x_filtered   = i_rx_decimate;
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

        function num = getNumInputsImpl(obj)
            % Define total number of inputs for system with optional inputs
            num = 2;
        end

        function out = getOutputSizeImpl(obj)
            % Return size for each output port
            out = [obj.l 1];
        end

        function out = getOutputDataTypeImpl(obj)
            % Returns the output data type
            out = propagatedInputDataType(obj,1);
        end

        function out = isOutputComplexImpl(obj)
            % Return true for each output port with complex data
            out = propagatedInputComplexity(obj,1);
        end

        function out = isOutputFixedSizeImpl(obj)
            % Return true for each output port with fixed size
            out = true;
        end

        function icon = getIconImpl(obj)
            % Define icon for System block
            icon = mfilename("class"); % Use class name
            % icon = "My System"; % Example: text icon
            % icon = ["My","System"]; % Example: multi-line text icon
            % icon = matlab.system.display.Icon("myicon.jpg"); % Example: image file icon
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
