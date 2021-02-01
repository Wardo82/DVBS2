function codeword = ldpc_encode(p_bit_addresses, message)
% Encode the message using the parity nodes table and returns the resulting codeword
    num_parity_bits = 64800-48600; % Nldpc - Kldpc
    q = 45; % Taken from table 7.a
    % 1.- Initialize p0 = p1 = p2 = ... = p_(nldpc−kldpc−1) = 0.
    parity = zeros(1, num_parity_bits);
    counter   = 0;
    address = 1;
    for k = 0:length(message)-1
        parity  = ldpc_accum_bit(parity, message(k+1), p_bit_addresses{address}, q, counter);
        if counter == 359
            address = address + 1;
        end
        counter = (counter + 1) * (counter + 1 < 360);
    end
    
    % Iterate over all chunks of 360 information bits
%     bch_codeword = reshape(message, 360, [])';
%     
%     for jj = 0:135-1 % j will be each row
%         parityAddrs = (p_bit_addresses{jj+1});
%         parity = ldpc_accum_bits(parity, ...
%                                  bch_codeword(jj+1, :), ...
%                                  parityAddrs, q);                  
%     end  
    % 5.- After all of the information bits are exhausted, the final parity bits are obtained
    %as follows:
    % • Sequentially perform the following operations starting with i = 1.
    %       pi = pi xor pi−1, i = 1,2,...,nldpc−kldpc−1
    for i = 2:num_parity_bits
        parity(i) = xor(parity(i), parity(i-1));
    end

    % • Final content of pi , i = 0,1,..,nldpc−kldpc−1 is equal to the parity bit pi.
    codeword = [message parity]';
end