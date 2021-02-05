%% The stored message. Same as VHDL testbench
fileEntireDataSet = importdata('message.txt');           
message = fileEntireDataSet(:, 1); 

generator = [1 0 1  0  0  1  1  1  0  0  0  1  0  0  1 ...
            1  0  0  0  0  0  1  1  1  0  1  0  0  0  0 ...
            0  1  1  1  0  0  0  0  1  0  0  0  1  0  1 ...
            1  1  0  0  0  1  0  1  0  0  0  1  0  0  0 ...
            1  1  1  0  0  0  1  0  1  0  0  0  0  1  1 ...
            0  0  1  1  1  1  0  0  1  0  1  1  0  0  1 ...
            1  0  1  1  0  0  0  1  1  0  1  1  1  0  0 ...
            0  0  1  1  0  1  0  1  0  0  0  0  1  0  0 ...
            0  1  0  0  0  1  0  0  1  0  0  0  0  0  0 ...
            1  1  0  1  0  0  0  1  1  1  1  0  0  0  0 ...
            1  0  1  1  1  1  1  0  1  1  1  0  1  1  0 ...
            0  1  1  0  0  0  0  0  0  0  1  0  0  1  0 ...
            1  0  1  0  1  1  1  1  0  0  1  1  1];        
k = 48408;
n = 48600;
primitive = de2bi(primpoly(16,'min'), 'left-msb');

bch_encoder = comm.BCHEncoder('CodewordLength', n, ...
                        'MessageLength', k, ...
                        'PrimitivePolynomialSource', 'Property', ...
                        'PrimitivePolynomial', primitive, ...
                        'GeneratorPolynomialSource', 'Property', ...
                        'GeneratorPolynomial', generator, ...
                        'CheckGeneratorPolynomial', true); 

% Encode message with bch block
parity_bits = zeros(n-k, 1);
% 1.- Multiply the message polynomial m(x) by x^(n−k) .
lfsr_message = [message; zeros(n-k, 1)];
lfsr_generator = fliplr(generator)'; % Flip the generator to ascending order
for i = 1:length(lfsr_message)
    parity_bits = bch_lfsr_encode(lfsr_generator, lfsr_message(i), parity_bits);
end
codeword = [message; fliplr(parity_bits')'];
codeword_m = bch_encoder(message);
if ~(isequal(codeword, codeword_m))
    error("The codes do not match.");
end