% Script used to test comput_syndrome function.
% It works with GF(2^4);
received_code = [0 0 0 1 0 1 0 0 0 0 0 0 1 0 0]; % bitxor(enc_bits, random_errors);

t = 3;
m = 4;
feedback_conections = [3 3 15 3 7 15]; % The minimal polynomials for GF(2^4)
load('userGftable.mat')
table = [1; GF_TABLE_STRUCT(4).table1];
syndromes = compute_syndrome(received_code, t, m, table, feedback_conections);

%% Testing for m = 16. The syndrome should be 0 for a codeword without errors.
t = 12; 
m = 16;
primitive_poly = 65581;
% Extracted minimal polynomials from DVBS2 guidelines
g1 = bi2de([1 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0]); % 1
g2 = bi2de([1 1 0 0 1 1 1 0 1 0 0 0 0 0 0 0]); % 3
g3 = bi2de([1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0]); % 5
g4 = bi2de([1 0 1 0 1 0 1 0 0 1 0 1 1 0 1 0]); % 7
g5 = bi2de([1 1 1 1 0 1 0 0 1 1 1 1 1 0 0 0]); % 9
g6 = bi2de([1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1]); % 11
g7 = bi2de([1 0 1 0 0 1 1 0 1 1 1 1 0 1 0 1]); % 13
g8 = bi2de([1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0]); % 15
g9 = bi2de([1 0 0 0 0 1 0 1 0 1 1 1 0 0 0 0]); % 17
g10 = bi2de([1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 0]); % 19
g11 = bi2de([1 0 1 1 0 1 0 0 0 1 0 1 1 1 0 0]); % 21
g12 = bi2de([1 1 0 0 0 1 1 1 0 1 0 1 1 0 0 0]); % 23
% The minimal polynomials for GF(2^4)
feedback_conections = [g1 g1 g2 g1 g3 g2 g4 g1 g5 g3 ...
                       g6 g2 g7 g4 g8 g1 g9 g5 g10 g3 ...
                       g11 g6 g12 g2];
clear g*;
table = gf_generate_table(m, primitive_poly);

bchencoder = bch_encoder();
% random data bits
x = uint32(randi([0 1], 48408, 1))';

enc_bits = bchencoder.step(x')';

% The codeword MUST enter with the most significant bit first!!!
tic;
syndrome = compute_syndrome(fliplr(enc_bits), t, m, table, feedback_conections)';
toc;
syndromes_binary = de2bi(syndromes);

%% Extra: Finding the roots for the minimal polynomials
result = zeros(2*t, 1);
for k = 1:2*t
    exponents = k .* (0:m); % The exponents of the alpha powers
    alpha_powers = table(exponents+1); % Find the vector representation
    for i = 1:m+1 % For each register in the state registers
        b = g1(i);
        % Make a mask depending on the value of the register
        b = uint16(b * (2^m - 1));
        % Accumulate the result of each polynomial element
        tmp = bitand(b, alpha_powers(i));
        result(k) = bitxor(result(k), tmp);
    end
end