function [syndrome] = compute_syndrome(received_code, t, m, field, feedback_conections)
% Computes the syndrome by using FSR.
    % Compute the remainders of r(X) divided by each minimial polynomial.
    n_max = 2^m-1;
    state_registers = uint32(zeros(2*t, 1));
    for i = length(received_code):-1:1
        for j = 1:2*t
            [~, state_registers(j)] = fsr_step(received_code(i), m, ...
                                          state_registers(j), ...
                                          feedback_conections(j), n_max);
            state_registers(j) = state_registers(j) - ...
                                 n_max * uint32(state_registers(j) > n_max); % Equivalent to aux mod(2^m - 1);
        end
    end
    
    % Compute the syndromes using the registers and the specified galois
    % field. See eq. 6.47 from Lin, Costello. Error Control Coding. page
    % 222.
    syndrome = uint32(zeros(1, 2*t));
    % We want to know the value of b(alpha ^ i) for 1 <= i <= 2*t
    for k = 1:2*t
        for i = 1:m % For each register in the state registers
            exponent    = modulo(k*(i-1), n_max);
            alpha_power = field(exponent+1); % Find the vector representation
            b           = bitget(state_registers(k), i);
            % Make a mask depending on the value of the register
            b           = b * (2^m - 1);
            % Accumulate the result of each polynomial element
            tmp         = bitand(b, alpha_power);
            syndrome(k) = bitxor(syndrome(k), tmp);
        end
    end
end

