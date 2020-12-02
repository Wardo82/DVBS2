message = randi([0 1], 1, 48600); 
       
rate = '3/4';
LDPCParityCheckMatrix = dvbs2ldpc(str2num(rate));
ldpc_encoder = comm.LDPCEncoder(LDPCParityCheckMatrix);

% Encode message with bch block
codeword = ldpc_encode(ldpc_34_p_bits(), message);
codeword_m = ldpc_encoder(message');

if ~(isequal(codeword, codeword_m))
    error("The codes do not match.");
end
