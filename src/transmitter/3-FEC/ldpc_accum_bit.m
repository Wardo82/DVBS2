function [parity_bits] = ldpc_accum_bit(parity_bits, bit, parity_bit_addresses, q, counter)
    % Iterate over all 360 information bits of a given chunk
    num_parity_bits = 16200;
    buffer = parity_bit_addresses + counter*q;
    adrr = buffer - num_parity_bits .* (buffer >= num_parity_bits);
    parity_bits(adrr+1) = xor(parity_bits(adrr+1), bit);
end

