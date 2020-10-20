function codeword = ldpc_encode(p_bit_addresses, message)
    %encode Encode the message using the parity nodes table and
    %returns the resulting codeword
    num_parity_bits = 64800-48600; % Nldpc - Kldpc
    q = 45; % Taken from table 7.a
%     % 1.- Initialize p0 = p1 = p2 = ... = p_(nldpc−kldpc−1) = 0.
    parity = zeros(1, num_parity_bits);
            
    % 2.- Accumulate the first information bit, i0 , at parity bit 
    % addresses specified in the first row of tables B.1 through B.11 in annex B.
%     first_addresses = p_bit_addresses{1};
%     parity(first_addresses+1) = xor(parity(first_addresses+1), message(1));

    % 3.- For the next 359 information bits, im, m =1, 2, ..., 359 accumulate im at 
    % parity bit addresses {x + (m)mod360×q}mod(nldpc−kldpc) where x denotes the address 
    % of the parity bit accumulator corresponding to the first bit i0 , and q is a code 
    % rate dependent constant specified in table 7a
%     mode = num_parity_bits-1;
%     for i = 2:360
%         addresses = mod(first_addresses+1+mod(i-1, 360)*q, num_parity_bits);
%         parity(addresses+1) = xor(parity(addresses+1), message(i));
%     end
    % 4.- For the 361st information bit i360 , the addresses of the parity bit accumulators 
    % are given in the second row of the tables B.1 through B.11. In a similar manner the 
    % addresses of the parity bit accumulators for the following 359 information bits im,
    % m = 361, 362, ..., 719 are obtained using the formula {x + (m mod360)×q}mod(nldpc-kldpc) 
    % where x denotes the address of the parity bit accumulator corresponding to the 
    % information bit i360 , i.e. the entries in the second row of the tables B.1 through B.11.
    % In a similar manner, for every group of 360 new information bits, a new row from tables 
    % B.1 through B.11 are used to find the addresses of the parity bit accumulators.

    % Iterate over all chunks of 360 information bits
    numIter = length(message)/360;
    for j = 0:numIter-1 % j will be each row
        parityAddrs = p_bit_addresses{j+1};
        % Iterate over all 360 information bits of a given chunk
        for i = 0:359
            m = j*360+i;
            adrr = mod(parityAddrs+mod(m, 360)*q, num_parity_bits);
            parity(adrr+1) = xor(parity(adrr+1), message(m+1));
        end
    end

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