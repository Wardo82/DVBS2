%% DVBS2 MATLAB implementation
% Draft of the implementation of the DVBS2 standard for the communication system 
% of the MOVE Beyond CubeSat. According to the documentation the DVB-S2 System 
% shall be composed of a sequence of functional blocks, each block will be
% implemented separately to better understand the different parts that the
% communication system comprises, in this case, the DVBS2 system.
%% Initialization
% This part of the script initializes some simulation parameters and generates 
% a structure, dvb, that will be used throughout the whole simulation. The
% elements of this structure are the parameters of the DVB-S.2 system.

dvb = initDVBS();

DFL = dvb.BCHMessageLength-80;
PAYLOAD = [zeros([1 DFL/4]) ones([1 DFL/2]) zeros([1 DFL/4])]'; 
%PAYLOAD=PAYLOAD(1:end-8);% Packet dummy payload
plot(PAYLOAD);

%% 1.- Mode Adaptation
% In this block, a header (of size 80) with synchronization data is inserted before the
% payload (of size Kbch - 80). The function HeaderInsertion(x) generates 
% a BBPACKET to deliver to the next block.
% In this case, we considered the generic continuous stream as input.
HEADER = randi([0 1], 80, 1);
BBPACKET = [HEADER; PAYLOAD]; % TModeAdaptation(PAYLOAD, dvb); % Header setup and insertion
%drawInFreq(BBPACKET, 'dB',3000, 'Baseband Packet');

% Base-Band packet is of the form [ HEADER | DATAFIELD ]
%% 2.- Stream Adaptation:
% Stream adaptation shall be applied, to provide padding to complete a Base-Band 
% Frame and Base-Band Scrambling.
PADDING = randi([0 1], dvb.BCHMessageLength-DFL-80, 1);
BBFRAME = [BBPACKET; PADDING]; % TStreamAdaptation(BBPACKET, dvb);
%drawInFreq(BBFRAME, 'dB', 3000, 'Baseband Frame');

%% 3.- Forward Error Correction
% Forward Error Correction (FEC) Encoding shall be carried out by the concatenation 
% of BCH outer codes and LDPC (Low Density Parity Check) inner codes. Depending on the application 
% area, the FEC coded block shall have length nldpc= 64 800 bits or 16 200 bits. 
% When VCM and ACM is used, FEC and modulation mode may be changed in different 
% frames, but remains constant within a frame.

FECFRAME = FECencoding(BBFRAME, dvb);

%% 4.- Mapping
% Mapping into QPSK, 8PSK, 16APSK and 32APSK constellations shall be applied, 
% depending on the application area. Gray mapping of constellations shall be used 
% for QPSK and 8PSK. subsystem = {'QPSK 1/4', ... 'QPSK 1/3', 'QPSK 2/5', 'QPSK 
% 1/2', 'QPSK 3/5', 'QPSK 2/3', ... 'QPSK 3/4', 'QPSK 4/5', 'QPSK 5/6', 'QPSK 
% 8/9', 'QPSK 9/10',... '8PSK 3/5', '8PSK 4/5', '8PSK 2/3', '8PSK 3/4', '8PSK 
% 5/6', ... '8PSK 8/9', '8PSK 9/10', '16APSK 2/3', '16APSK 3/4', ... '16APSK 4/5', 
% '16APSK 5/6', '16APSK 8/9', '16APSK 9/10', ... '32APSK 3/4', '32APSK 4/5', '32APSK 
% 5/6', '32APSK 8/9', ... '32APSK 9/10'};

XFECFRAME = map(FECFRAME, dvb);

%% 5.- Physical Layer Framming
% Physical layer framing shall be applied, synchronous with the FEC frames, 
% to provide Dummy PLFRAME insertion, Physical Layer (PL) Signalling, pilot symbols 
% insertion (optional) and Physical Layer Scrambling for energy dispersal. Dummy 
% PLFRAMEs are transmitted when no useful data is ready to be sent on the channel. 
% The System provides a regular physical layer framing structure, based on SLOTs 
% of M = 90 modulated symbols, allowing reliable receiver synchronization on the 
% FEC block structure. A slot is devoted to physical layer signalling, including 
% Start-of-Frame delimitation and transmission mode definition. This mechanism 
% is suitable also for VCM and ACM demodulator setting. Carrier recovery in the 
% receivers may be facilitated by the introduction of a regular raster of pilot 
% symbols (P = 36 pilot symbols every 16 SLOTs of 90 symbols), while a pilot-less 
% transmission mode is also available, offering an additional 2,4% useful capacity.

PLFRAME = XFECFRAME; % PLFrameFwrd(XFECFRAME, dvb);

%% 6.- Base-Band Filtering and Quadrature Modulation
% Base-Band Filtering and Quadrature Modulation shall be applied, to shape the 
% signal spectrum (squared-root raised cosine, roll-off factors 0,35 or 0,25 or 
% 0,20) and to generate the RF signal.

SIGNAL = BBFilterAndQModulate(PLFRAME, dvb);
ed = comm.EyeDiagram('SamplesPerSymbol',dvb.SamplesPerSymbol);
ed(real(SIGNAL));

%% Channel
CHANNELOUT = SIGNAL; % chan(SIGNAL, dvb.EsNodB);


%% 6.- Base-Band Filtering and Quadrature Demodulation
% Base-Band Filtering and Quadrature demodulation shall be applied. After
% receiving the RF signal we filter it to base-band to start processing it.

Rx_PLFRAME = BBFilterAndQDemodulate(CHANNELOUT, dvb);

%% 5.- TODO: Physical Layer Framming
Rx_XFECFRAME = Rx_PLFRAME;

%% 4.- Demoulation of the signal
Rx_FECFRAME = demap(Rx_XFECFRAME, dvb);

%% 3.- Forward Error Correction
% Decoding is always the trickier part of the FEC schemes. Here we decode
% LDPC using hard decoding and BCH using one implementation of the Berlekam
% Massey Algorithm
Rx_BBFRAME = FECdecoding(Rx_FECFRAME, dvb);

%% 2.- Stream Adaptation:
% Stream adaptation shall be applied, to provide padding to complete a Base-Band 
% Frame and Base-Band Scrambling.
%drawInFreq(R_BBFRAME, 'dB',3000, 'Baseband Frame');
Rx_BBPACKET = Rx_BBFRAME; % RStreamAdaptation(Rx_BBFRAME, dvb);

%% 1.- Mode Adaptation
% In block, a header with synchronization data is inserted before the
% payload of size Kbch - 80. The function header_insertion(x) handles the
% header setup and insertion to generate a BBPACKET to deliver to the next
% block. In this case, we considered the generic continuous stream as
% input.
plot(Rx_BBPACKET);
% drawInFreq(Rx_BBPACKET, 'dB',3000, 'Baseband Packet');
%Rx_PAYLOAD = RModeAdaptation(Rx_BBPACKET); % Header extraction and payload adquisition

