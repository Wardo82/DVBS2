function state_registers = bch_lfsr_encode(generator, input, state_registers)
    
    g = length(generator) - 1; % Number of registers
    % Compute the output of the LFSR, the last bit of the registers.
    out = state_registers(g);
    out_mask = repmat(out, g, 1);
    % Update the states in the LFSR
    % for s = g:-1:2
    % Compute "and" flag
    flag = and(out_mask, generator(1:g));
    % Each state will be the result of:
    % state(s-1) xor generator_polinomial coefficient
    buffer = [input; state_registers(1:g-1)];
        
    state_registers = xor(buffer, flag);
end