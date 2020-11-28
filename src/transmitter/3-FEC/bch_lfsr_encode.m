function state_registers = bch_lfsr_encode(generator, input, state_registers)
    
    g = length(generator) - 1; % Number of registers
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