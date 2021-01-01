classdef transmit_srrc_filter < matlab.System
    % Square root raised cosine filter

    % Public, non-tunable properties
    properties(Nontunable)
        l                    = 21600;
        interpolation_factor = 8;
    end

    % Pre-computed constants
    properties(Access = private)
        output_size
    end
    methods
        % Constructor
        function obj = transmit_srrc_filter(varargin)
            % Support name-value pair arguments when constructing object
            setProperties(obj,nargin,varargin{:})
        end
    end

    methods(Access = protected)
        %% Common functions
        function setupImpl(obj, ~)
            % Perform one-time calculations, such as computing constants
            obj.output_size = [obj.interpolation_factor*obj.l 1];
        end

        function x_filtered = stepImpl(obj, x, coefficients) 
            i_tx_tmp      = repmat(x, 1, obj.interpolation_factor); % Upsampling
            i_tx_interpol = reshape(i_tx_tmp', obj.l*obj.interpolation_factor, 1);
            i_tx_filtered = srrc_filter(i_tx_interpol, coefficients);
            x_filtered   = i_tx_filtered;
        end

        %% Simulink functions
        function num = getNumInputsImpl(obj)
            % Define total number of inputs for system with optional inputs
            num = 2;
        end

        function out = getOutputSizeImpl(obj)
            % Return size for each output port
            out = [obj.l*obj.interpolation_factor 1];
        end

        function out = getOutputDataTypeImpl(obj)
            % Returns the output data type
            out = propagatedInputDataType(obj,1);
        end

        function out = isOutputComplexImpl(obj)
            % Return true for each output port with complex data
            out = false;
        end

        function out = isOutputFixedSizeImpl(obj)
            % Return true for each output port with fixed size
            out = true;
        end
    end
end
