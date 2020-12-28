% Test bench for the modulation and demodulation functions.
% Modulation is in transmitter/4-Mapping folder
% Demodulation is in receiver/4-Mapping folder
M = 8; % We are working with 8psk
bits_per_symbol = uint8(log2(M));
awgnchan = comm.AWGNChannel('NoiseMethod','Signal to noise ratio (Eb/No)', ...
    'BitsPerSymbol',log2(M),'SignalPower',1);
% Create a symbol error rate and bit error rate calculator System objects 
% to compare the demodulated integer and bit data with the original source data.
biterror = comm.ErrorRate;
EbNoVec = 0:2:12; % Eb/No values to simulate
BERVec = zeros(size(EbNoVec)); % Initialize BER history for Gray ordered

for p = 1:length(EbNoVec)
    reset(biterror); % Reset System objects
    awgnchan.EbNo = EbNoVec(p);
    BER = 0;    % Reset BER for the current Eb/No value
    for i = 1:20 % Lets send 100 frames
        fec_frame = int32(randi([0 1], 64800, 1)); % The input frame after LDPC encoding
        [I, Q] = psk_modulate(fec_frame, bits_per_symbol, sqrt(1));
        mod_symbols = I + Q*1i;
        rx = awgnchan(mod_symbols);
        rcv_fec_frame = psk_demodulate(real(rx), imag(rx), bits_per_symbol);
        error_num = biterror(fec_frame, rcv_fec_frame); % Bit error rate for Gray-coded data
        BER = BER + error_num(1); 
    end
    BERVec(p) = BER;
end

theorBER = berawgn(EbNoVec,'psk',M,'nondiff');
figure;
semilogy(EbNoVec,BERVec,'x', EbNoVec,theorBER,'o');
legend('Bit error rate (Gray)', 'Theoretical Bit error rate','Location','SouthWest');
xlabel('Eb/No (dB)'); ylabel('Error Probability');
title('Bit Error Probability');
grid on;