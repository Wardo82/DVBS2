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
BBFRAME = randi([0 1], dvb.BCHMessageLength, 1);
FECFRAME = FECencoding(BBFRAME, dvb);
R_BBFRAME = not(FECdecoding(FECFRAME, dvb));


%% 4.- Mapping:
dvb = initDVBS();
FECFRAME = randi([0 1], dvb.LDPCCodewordLength, 1);
XFECFRAME = map(FECFRAME, dvb);
R_FECFRAME = demap(XFECFRAME, dvb);


%% 5.- Physical Layer Framming

%% 6.- Base-Band Filtering and Quadrature Modulation
