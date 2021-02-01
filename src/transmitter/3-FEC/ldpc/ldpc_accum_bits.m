function [parity_bits] = ldpc_accum_bits(parity_bits, slot, parity_bit_addresses, q)
    % Iterate over all 360 information bits of a given chunk
    num_parity_bits = 16200;
    for i = 0:359 
        buffer = parity_bit_addresses + i*q;
        adrr = buffer - num_parity_bits .* (buffer >= num_parity_bits);
        parity_bits(adrr+1) = xor(parity_bits(adrr+1), slot(i+1));
    end
end

