% File thought to serve as "testbench" (didn't find a better name) for each
% functional block of the simulation.
% The idea is that each function should have an inverse, so that
% without channel (and in some cases with channel) we should get the same
% bit stream.

%% 1.- Mode Adaptation: 
% Mode adaptation should append the header with all corresponding
% parameters by transimition. By reception it should extract the PAYLOAD (Datafield)
% and check for errors (CRC8 check).
% TODO: CRC8 check
DFL = dvb.BCHMessageLength - 80 - 8; % Data field size
PAYLOAD = [zeros([1 DFL/4]) ones([1 DFL/2]) zeros([1 DFL/4])]';  
BBPACKET = TModeAdaptation(PAYLOAD, dvb); % Transmition
ReceivedPayload = RModeAdaptation(BBPACKET); % Reception

if isequal(ReceivedPayload, PAYLOAD)
    disp("Mode Adaptation works fine.")
else
    disp("Mode Adaptation implementation error.")
end

%% 2.- Stream Adaptation:

%% 3.- Forward Error Correction:
% This sub-system shall perform outer coding (BCH), Inner Coding (LDPC) and Bit interleaving. The input
% stream shall be composed of BBFRAMEs and the output stream of FECFRAMEs.
% Each BBFRAME (Kbch bits) shall be processed by the FEC coding subsystem, to generate a FECFRAME (nldpc bits).
dvb = initDVBS();
EbNodB = -6:2:10; % Eb/N0 range in dB for simulation
EbNo = 10.^(EbNodB / 10);
ber = zeros(1, length(EbNodB));
channel = comm.AWGNChannel('BitsPerSymbol',3);
errorRate = comm.ErrorRate;
for i = 1:length(EbNodB)
    disp("Iteration nº: " + i);
    % Source
    BBFRAME = randi([0 1], dvb.BCHMessageLength, 1);
    % Transmitter
    FECFRAME = FECencoding(BBFRAME, dvb);
    % Apply 8-PSK modulation.
    tx_signal = pskmod(FECFRAME, 8, dvb.PhaseOffset);
    % Channel
    channel.EbNo = EbNodB(i);
    rx_signal = channel(tx_signal);
    % Demodulate the noisy signal.
    rx_fec_frame = pskdemod(rx_signal, 8, dvb.PhaseOffset);
    % Receiver
    rx_bbframe = 1 - FECdecoding(rx_fec_frame, dvb);
    %Bit Error rate Calculation
    errorStats = errorRate(BBFRAME, rx_bbframe);
    ber(i) = errorStats(1);
    reset(errorRate);
end

% Plot results
berNoCoding = berawgn(EbNodB,'PSK',8,'nondiff');
semilogy(EbNodB, berNoCoding, 'o-', EbNodB, ber, 'x--');
title('SNR per bit (Eb/N0) Vs BER curve for BCH and LDPC code concatenation.');
xlabel('SNR per bit (Eb/N0) in dB');
ylabel('Bit Error Rate (BER) in dB');
grid on;

%% 4.- Mapping:
dvb = initDVBS();
EbNodB = -6:2:20; % Eb/N0 range in dB for simulation
EbNo = 10.^(EbNodB / 10);
ber = zeros(1, length(EbNodB));
channel = comm.AWGNChannel('BitsPerSymbol', log2(dvb.ModulationOrder));
errorRate = comm.ErrorRate;
for i = 1:length(EbNodB)
    disp("Iteration nº: " + i);
    % Source
    fec_frame = randi([0 1], dvb.LDPCCodewordLength, 1);
    % Transmitter
    tx_signal = map(fec_frame, dvb);
    % Channel
    channel.EbNo = EbNodB(i);
    rx_signal = channel(tx_signal);
    % Demodulate the noisy signal.
    rx_fec_frame = demap(rx_signal, dvb);
    %Bit Error rate Calculation
    errorStats = errorRate(fec_frame, rx_fec_frame);
    ber(i) = errorStats(1);
    reset(errorRate);
end

% Plot results
berNoCoding = berawgn(EbNodB,'psk',8,'nondiff');
semilogy(EbNodB, berNoCoding, 'o-', EbNodB, ber, 'x--');
title('SNR per bit (Eb/N0) Vs BER curve for BCH and LDPC code concatenation.');
xlabel('SNR per bit (Eb/N0) in dB');
ylabel('Bit Error Rate (BER) in dB');
grid on;

%% 5.- Physical Layer Framming

%% 6.- Base-Band Filtering and Quadrature Modulation
