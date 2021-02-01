input_message = zeros(48600, 1)'; % randi([0 1], 1, 48600); 
odd_idx = 1:2:48600;
input_message(odd_idx) = 1;

rate = '3/4';
LDPCParityCheckMatrix = dvbs2ldpc(str2num(rate));
matlab_ldpc_encoder = comm.LDPCEncoder(LDPCParityCheckMatrix);

% Encode message with bch block
dvbs2_ldpc_encoder = ldpc_encoder();
tic;
codeword = ldpc_encode(ldpc_34_p_bits(), input_message); % dvbs2_ldpc_encoder.step(message'); %
toc;
tic
codeword_m = matlab_ldpc_encoder(input_message');
toc

if ~(isequal(codeword, codeword_m))
    error("The codes do not match.");
end
