classdef BCHEncoder < matlab.System
% Class definition for a BCHEncoder that is going to be used to create a 
% simulink block.
% Inheriting from matlab.System is enables us to include this code in a 
% simulink block.
    
    % Property section for logical values that can be only true or false.
    % Nontunable means that it cannot change while the model is running.
    properties (Logical, Nontunable)
    end
    % Hidden properties that won't be shown either in matlab nor in 
    % simulink.
    properties (Hidden)
        n = 48600; % Codeword length
        k = 48408; % Length of input message
    end
    properties
        % The generator polynomial in ascending order
        lfsr_generator = logical([1  1  1  0  0  1  1  1  1  0  1  0  1 ... 
                                            0  1  0  0  1  0  0  0  0  0  0  0  1  1  0 ... 
                                            0  1  1  0  1  1  1  0  1  1  1  1  1  0  1 ... 
                                            0  0  0  0  1  1  1  1  0  0  0  1  0  1  1 ...
                                            0  0  0  0  0  0  1  0  0  1  0  0  0  1  0 ...                                    
                                            0  0  1  0  0  0  0  1  0  1  0  1  1  0  0 ...                                       
                                            0  0  1  1  1  0  1  1  0  0  0  1  1  0  1 ...                                      
                                            1  0  0  1  1  0  1  0  0  1  1  1  1  0  0 ...                                       
                                            1  1  0  0  0  0  1  0  1  0  0  0  1  1  1 ...                                       
                                            0  0  0  1  0  0  0  1  0  1  0  0  0  1  1 ...                                       
                                            1  0  1  0  0  0  1  0  0  0  0  1  1  1  0 ...                                      
                                            0  0  0  0  1  0  1  1  1  0  0  0  0  0  1 ...                                       
                                            1  0  0  1  0  0  0  1  1  1  0  0  1  0  1]);
    end
    methods (Access = protected)
        function setupImpl(~)
        end
        function codeword = stepImpl(obj, message)
            % 1.- Multiply the message polynomial m(x) by x^(n−k) .
            lfsr_message = [message; false(192, 1)];
            % Parity bit column vector
            parity_bits = false(192, 1);
            for i = 1:length(lfsr_message)
                parity_bits = obj.bch_lfsr_encode(obj.lfsr_generator, lfsr_message(i), parity_bits);
            end
            codeword = [message; fliplr(parity_bits')'];
        end
        function releaseImpl(~)
        end

        function out = getOutputSizeImpl(obj)
            % Return size for each output port
            out = [obj.n 1];

            % Example: inherit size from first input port
            % out = propagatedInputSize(obj,1);
        end

        function out = getOutputDataTypeImpl(obj)
            % Return data type for each output port
            out = "logical";

            % Example: inherit data type from first input port
            % out = propagatedInputDataType(obj,1);
        end

        function out = isOutputComplexImpl(obj)
            % Return true for each output port with complex data
            out = false;

            % Example: inherit complexity from first input port
            % out = propagatedInputComplexity(obj,1);
        end
        
        function state_registers = bch_lfsr_encode(obj, generator, input, state_registers)
            g = obj.n - obj.k; % Number of registers
            % Compute the output of the LFSR, the last bit of the registers.
            out = state_registers(g);
            % Update the states in the LFSR
            for s = g:-1:2
                % Compute "and" flag
                flag = and(out, generator(s));
                % Each state will be the result of:
                % state(s-1) xor generator_polinomial coefficient
                state_registers(s) = xor(state_registers(s-1), flag);
            end
            % First register is: input xor generator(1)
            state_registers(1) = xor(input, and(out, generator(1)));
        end
    end
end