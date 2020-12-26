clear all;
% Script used to test comput_syndrome function.
%% Example 6.6 from Error Control Coding
t = 3;
m = 4;
load('userGftable.mat')
gf_table = [GF_TABLE_STRUCT(m).table1];
alpha_powers = GF_TABLE_STRUCT(m).table2;
syndrome = [1 1 gf_table(10) 1 gf_table(10) gf_table(5)]';
locator_polynomial = compute_error_locator_v2(syndrome, t, m, gf_table, alpha_powers);

if ~isequal(locator_polynomial, [1 1 0 gf_table(5)]')
    error("Error in example 6.6 from Error Control Coding")
end
enc_bits = zeros(15, 1); 
enc_bits(4) = 1; enc_bits(6) = 1; enc_bits(13) = 1;
[error_locations, errors] = ...
                compute_chien_search(length(enc_bits), ...
                                     locator_polynomial, ...
                                     gf_table, alpha_powers, uint32(2^m - 1));
%% Example 6.14 from Error Correction and Coding. Mathematical methods.
t = 2;
m = 5;
load('userGftable.mat')
gf_table = [GF_TABLE_STRUCT(m).table1];
alpha_powers = GF_TABLE_STRUCT(m).table2;
syndrome = [gf_table(17) gf_table(3) 1 gf_table(6)]';
locator_polynomial = compute_error_locator_v2(syndrome, t, m, gf_table, alpha_powers);

if ~isequal(locator_polynomial, [1 gf_table(17) gf_table(22)]')
    error("Error in example 6.14 from Error Correction and Coding. Mathematical methods.")
end

%% Example 6.16 from Error Correction and Coding. Mathematical methods.
t = 3;
m = 4;
load('userGftable.mat')
gf_table = [GF_TABLE_STRUCT(m).table1];
alpha_powers = GF_TABLE_STRUCT(m).table2;
syndrome = [gf_table(12) gf_table(9) gf_table(3) gf_table(3) 0 gf_table(6)]';
locator_polynomial = compute_error_locator_v2(syndrome, t, m, gf_table, alpha_powers);

if ~isequal(locator_polynomial, [1 gf_table(12) gf_table(10) gf_table(12)]')
    error("Error in example 6.16 from Error Correction and Coding. Mathematical methods.")
end
enc_bits = zeros(15, 1);
enc_bits(2) = 1; enc_bits(4) = 1; enc_bits(9) = 1;
[error_locations, errors] = ...
                compute_chien_search(length(enc_bits), ...
                                     locator_polynomial, ...
                                     gf_table, alpha_powers, uint32(2^m - 1));
%% Table 7.1 from Algebraic Codes for data transmission
t = 3;
m = 4;
load('userGftable.mat')
gf_table = [GF_TABLE_STRUCT(m).table1];
alpha_powers = GF_TABLE_STRUCT(m).table2;
syndrome = [gf_table(14) gf_table(13) 1 gf_table(11) gf_table(5) 1]';
locator_polynomial = compute_error_locator_v2(syndrome, m, gf_table, alpha_powers);

if ~isequal(locator_polynomial, [1 gf_table(14) gf_table(11) gf_table(14)]')
    error("Error in Table 7.1 from Algebraic Codes for data transmission.")
end
enc_bits = zeros(15, 1);
enc_bits(2) = 1; enc_bits(4) = 1; enc_bits(9) = 1;
[error_locations, errors] = ...
                compute_chien_search(length(enc_bits), ...
                                     locator_polynomial, ...
                                     gf_table, alpha_powers, uint32(2^m - 1));
%% Testing for m = 16. The syndrome should be 0 for a codeword without errors.
clear variables
t = 2; 
m = 16;
n_max = 2^m - 1;
primitive_poly = 65581;
load('userGftable.mat')
% Extracted minimal polynomials from DVBS2 guidelines
g1 = bi2de([1 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0]); % 1  : 2, 4, 8, 16,
g2 = bi2de([1 1 0 0 1 1 1 0 1 0 0 0 0 0 0 0]); % 3  : 6, 12, 24
g3 = bi2de([1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0]); % 5  : 10, 20
g4 = bi2de([1 0 1 0 1 0 1 0 0 1 0 1 1 0 1 0]); % 7  : 14
g5 = bi2de([1 1 1 1 0 1 0 0 1 1 1 1 1 0 0 0]); % 9  : 18
g6 = bi2de([1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1]); % 11 : 22
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
gf_table = GF_TABLE_STRUCT(m).table1(:, 2);
alpha_powers = GF_TABLE_STRUCT(m).table2(:, 2);

bchencoder = bch_encoder();
% random data bits
x = uint32(zeros(48408, 1))';%randi([0 1], 48408, 1))';

enc_bits = bchencoder.step(x')';

n_random_errors = randsrc(1,1,[t]);    
random_errors = randerr(1, length(enc_bits), n_random_errors); 
% Injection of random errors in encoded bits
received_code = bitxor(enc_bits, uint32(random_errors));
%received_code = enc_bits;
% Errors in the first 16000 bits
%received_code(1) = 1; %received_code(5000) = 1; received_code(10000) = 1;
%received_code(10) = 1; received_code(7500) = 1; received_code(15000) = 1;
% Errors between the 16000 bit and the 48600;
%received_code(16001) = 1; received_code(20000) = 1; received_code(15000) = 1;
%received_code(17000) = 1; received_code(25000) = 1; received_code(10000) = 1;

% The codeword MUST enter with the most significant bit first!!!
syndrome = compute_syndrome(fliplr(received_code), t, m, gf_table, feedback_conections)';
verify_syndromes(syndrome, fliplr(random_errors), t, gf_table, n_max);

% Error locator polynomial (lambda) calculation
locator_polynomial = compute_error_locator(syndrome, t, m, gf_table, alpha_powers);
c = compute_error_locator_v2(syndrome, m, gf_table, alpha_powers);
verify_error_locator(c, fliplr(random_errors), t, gf_table, alpha_tuples, n_max);

[error_locations, errors] = ...
                compute_chien_search(length(received_code), ...
                                     c, ...
                                     gf_table, alpha_powers, uint32(2^m - 1));