function [out, state_registers] = fsr_step(input, m, state_registers, feedback_conections, n_max)
% fsr_step Computes one step on a Feedback Shift Register for polynomial
% division. Returns the result bit in out and the state of the state
% registers.
% @args m: Number of registers
    % Compute the output of the FSR, the last bit of the registers.    
    out = bitget(state_registers, m);
    out_tmp = out * (2^m - 1); % Make a mask depending on the output
    % Mask that depends on feedback conections
    mask = bitand(feedback_conections, out_tmp);
    % Shift all registers one step to the right
    next_values = bitshift(state_registers, 1);
    next_values = next_values - n_max * (next_values > n_max);
    % Mask them with the feedback conexions 
    state_registers = bitxor(next_values, mask);
    % The input bit results from xoring input and out
    state_registers = bitset(state_registers, 1, bitxor(input, out));
end