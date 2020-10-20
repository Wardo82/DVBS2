function codeword = bch_lfsr_encode(generator, message)

    k = length(message); % Length of message
    g = length(generator) - 1; % Length of generator polynomial
    state_registers = zeros(g, 1); % Internal states of the LFSR
    
    for i = 1:k % For all bits in message
        % Compute the output of the LFSR
        output = state_registers(1);
        % Update the states in the LFSR
        for s = 1:g-1
            % Compute and flag
            flag = and(output, generator(s+1));
            % Each state will be the result of:
            % state(s-1) xor generator_polinomial
            state_registers(s) = xor(state_registers(s+1), flag);
        end
        % First state is: input xor generator(1)
        state_registers(g) = xor(message(i), and(output, generator(1)));
    end
    
    codeword = [message; state_registers];
end