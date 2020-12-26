message = randi([0 1], 1, 48600); 
       
rate = '3/4';
LDPCParityCheckMatrix = dvbs2ldpc(str2num(rate));
matlab_ldpc_encoder = comm.LDPCEncoder(LDPCParityCheckMatrix);

% Encode message with bch block
dvbs2_ldpc_encoder = ldpc_encoder();
codeword = dvbs2_ldpc_encoder.step(message');
codeword_m = matlab_ldpc_encoder(message');

if ~(isequal(codeword, codeword_m))
    error("The codes do not match.");
end
