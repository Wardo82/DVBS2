%% 
% Main simulation script for the dvbs2 rate= 3/4 transmitter scheme with
% 8PSK modulation.

%% 5.6 Baseband shaping and quadrature modulation
filter_span      = 10; % Is this the filter span in symbols?
samples_per_symbol = 8;
roll_off_factor   = 0.2;
tx_filter = comm.RaisedCosineTransmitFilter('Shape', 'Square Root',...
                                           'FilterSpanInSymbols', filter_span,... % "Should be way higher than the Samples per Symbol"
                                           'OutputSamplesPerSymbol', samples_per_symbol, ...
                                           'RolloffFactor', roll_off_factor);

rx_filter = comm.RaisedCosineReceiveFilter('InputSamplesPerSymbol', samples_per_symbol, ...
                                           'RolloffFactor', roll_off_factor); 
% Normalize to obtain maximum filter tap value of 1
b = coeffs(tx_filter);
tx_filter.Gain = 1/max(b.Numerator);

% Visualize the impulse response
fvtool(tx_filter,'Analysis','impulse')

%% 5.3 FEC encoding
% This sub-system shall perform outer coding (BCH), Inner Coding (LDPC) and Bit interleaving. The input stream shall
% be composed of BBFRAMEs and the output stream of FECFRAMEs.
% 5.3.1 Outer encoding (BCH)
bch_codeword_length   = 48600;
bch_message_length    = 48408;
bch_primitive_polynom = [1,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1];
bch_generator_polynom = [1,0,1,0,0,1,1,1,0,0,0,1,0,0,1,1,0,0,0,0,0,1,1,1,0,1,0,0,0,0,0,1,1,1,0,0,0,0,1,0,0,0,1,0,1,1,1,0,0,0,1,0,1,0,0,0,1,0,0,0,1,1,1,0,0,0,1,0,1,0,0,0,0,1,1,0,0,1,1,1,1,0,0,1,0,1,1,0,0,1,1,0,1,1,0,0,0,1,1,0,1,1,1,0,0,0,0,1,1,0,1,0,1,0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,1,0,0,0,0,0,0,1,1,0,1,0,0,0,1,1,1,1,0,0,0,0,1,0,1,1,1,1,1,0,1,1,1,0,1,1,0,0,1,1,0,0,0,0,0,0,0,1,0,0,1,0,1,0,1,0,1,1,1,1,0,0,1,1,1];
tx_bch_encoder = comm.BCHEncoder('CodewordLength', bch_codeword_length, ...
                         'MessageLength', bch_message_length, ...
                         'PrimitivePolynomialSource', 'Property', ...
                         'PrimitivePolynomial', bch_primitive_polynom, ...
                         'GeneratorPolynomialSource', 'Property', ...
                         'GeneratorPolynomial', bch_generator_polynom, ...
                         'CheckGeneratorPolynomial', true); 
rx_bch_decoder = comm.BCHDecoder('CodewordLength', bch_codeword_length, ...
                        'MessageLength', bch_message_length, ...
                        'PrimitivePolynomialSource', 'Property', ...
                        'PrimitivePolynomial', bch_primitive_polynom, ...
                        'GeneratorPolynomialSource', 'Property', ...
                        'GeneratorPolynomial', bch_generator_polynom, ...
                        'CheckGeneratorPolynomial', false);                    
% 5.3.2 Inner encoding (LDPC)
% Parity check matrix using dvbs2ldpc MATLAB function, with code rate as argument.
LDPCParityCheckMatrix = dvbs2ldpc(str2num('3/4'));
tx_ldpc_encoder = comm.LDPCEncoder(LDPCParityCheckMatrix);
rx_ldpc_decoder = comm.LDPCDecoder(LDPCParityCheckMatrix);
% 5.3.3 Bit Interleaver (for 8PSK, 16APSK and 32APSK only)

interleaver = comm.BlockInterleaver(dvb.InterleaveOrder);
deinterleaver = comm.BlockDeinterleaver(dvb.InterleaveOrder);
%% System Simulation

SNRs = 8;
berEst = zeros(size(SNRs)); % Bit Error Rate estimation
num_of_frames = 1;

for i = 1:length(SNRs)
    
    for j = 1:num_of_frames
        % Create the message
        message = randi([0 1], bch_message_length, 1);
                
        % Send it
        bch_codeword = tx_bch_encoder(message);
        ldpc_codeword = tx_ldpc_encoder(bch_codeword);
        
        
    end

end