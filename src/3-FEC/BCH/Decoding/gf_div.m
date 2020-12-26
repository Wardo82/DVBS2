function [result, state_registers] = gf_div(v1, v2, m)
%gf_div Divides polynomial v1 by v2 and returns the result and remainder
% in the same data type of the arguments.
% =================== DOES NOT WORK =======================
    result = uint16(0);
    state_registers = v1; % Initial state of the LFSR
    n_max = (2^m - 1);
    
    % Shift to the right until a one is found
    tap = 1;
    out = 0;
    while (out == 0 && tap < m)
        out     = bitget(state_registers, m-1); % Get the output bit
        state_registers = bitshift(state_registers, 1);  
        state_registers = bitand(state_registers, n_max); % Keep them in the field
        tap = tap + 1;
    end
    % A one was found and set into the result value
    result  = bitset(result, 1, out); % Set the result bit
    result  = bitshift(result, 1);
        
    for bit = tap:m % for the rest of bits in v1
        out     = bitget(state_registers, m-1); % Get the output bit
        result  = bitset(result, 1, out); % Set the result bit
        result  = bitshift(result, 1);
        out_tmp = out * n_max; % Make a mask of all 1's or 0's
        mask    = bitand(v2, out_tmp); % Mask that depends on the divisor
        % Shift all registers one step to the right
        state_registers = bitshift(state_registers, 1);  
        state_registers = bitand(state_registers, n_max); % Keep them in the field
        state_registers = bitxor(state_registers, mask); % Finally mask them
    end
end

