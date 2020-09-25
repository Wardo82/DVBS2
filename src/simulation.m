%% Simulation:
% This section of the code calls the processing loop for a DVB-S.2 system.
% The main loop processes the data for different SNRs. The first part of the
% for-loop simulates the system. 
% The modulator maps the interleaved bits to symbols from the predefined
% constellation. The modulated symbols pass through an AWGN channel. The
% demodulator employs an approximate log-likelihood algorithm to obtain soft
% bit estimates. The LDPC decoder decodes the deinterleaved soft bit values and
% generates hard decisions. The BCH decoder works on these hard decisions to
% create the final estimate of the received frame.
% 
% The second part of the for-loop collects performance measurements such as the
% bit error rate and a scatter plot. It also estimates the received SNR value.

%% Initialization
% This part of the script initializes some simulation parameters and generates 
% a structure, dvb, that will be used throughout the whole simulation. The
% elements of this structure are the parameters of the DVB-S.2 system.
dvb = initDVBS();

%% Prepare payload for simulation
img = imread('Assets/earthLowRes.jpg'); % Load image
imgSize = size(img); % Save the image size
payload = reshape(img, [], 1); % Shape as a row vector 
payload = reshape(de2bi(payload), [], 1); % Convert to bits
numOfUP = ceil(length(payload)/dvb.UPL); % Calculate the minimum number of frames necessary
payload = logical([payload; zeros( [(dvb.UPL-mod(length(payload), dvb.UPL)) 1] )]); % Append with zeros the last frame if needed

dvb.verbose = false; % No plots

% 1.- Input interface:
% In this simulation we are interested in the Generic Stream interface type, 
% as we want to build a system that is payload independent (we should not
% care about what we are sending). 
% To do so we will work with generic stream of constant-length User Packets
% (UP) of length UPL bits (maxmium value is 64K). If UPL is 0, continious
% generic stream is considered.

% For Generic packetized streams, if a synch-byte is the first byte of the 
% UP, it shall be left unchanged, otherwise a sync-byte = 0D shall be inserted 
% before each packet, and UPL shall be increased by eight.
if ~dvb.UPSync % If there is no sync-byte
    PAYLOAD = reshape(payload, numOfUP, []);
    dvb.UPL = dvb.UPL + 8; % Increase UPL by eight
    PAYLOAD = [zeros([8 size(PAYLOAD, 2)]); PAYLOAD]; % Insert sync-byte = 0D
end

% In order to add error detection at packet level, a CRC is used. 
% MATLAB's CRCGenerator creates a CRC generator System object with the
% polynomial given as paramameters. For DVBS2 the polynomial is 
%       g(x) = x^8 + x^7 + x^6 + x^4 + x^2 + 1
% used in CRC8 (Polynomial of degree 8)

if (dvb.UPL > 0 && dvb.UPL < 64800) % If is not continious stream
    CRC8Encoder = comm.CRCGenerator([8 7 6 4 2 0]); 
    % The CRC code is appended at the end of the User Packet, replacing a
    % Sync byte of the next UP if present. SyncByte = 0 means the input had 
    % no sync byte and a byte 0D was appended. This sync byte shall be copied 
    %into the SYNC field of the BBHEADER for transmission.
    EncodedUP = zeros(size(PAYLOAD)); % Matrix of same size as input
    for ii = 1:size(PAYLOAD, 2)-1 % For each User Packet (UP)
       EncodedUP(:, ii) = CRC8Encoder(PAYLOAD(9:end, ii)); % Compute de CRC8 and insert it afterwards
       CRC8Encoder.reset(); % Reset state to 0
    end

end
PAYLOAD = reshape(EncodedUP, [], 1); % Reshape into stream of bits (column vector)

%% ==== Main simulation loop ====
%parpool; % Start(setup) the parallel pool enviroment for multithreading (Might take a while the first time)
SNR = (10:11)'; % Column vector with different SNR
berEst = zeros(size(SNR)); % Bit Error Rate estimation

for i=1:length(SNR)
    disp("Iteration: "+i);
    % Create n futures for each chunk of payload that we want to send
    transmitFutures(1:ceil(length(PAYLOAD)/DFL)) = parallel.FevalFuture;
    
    ii = 1; % We start at first bit
    idx = 1; % Index of used future
    DFL = dvb.DFL; % Set the Data Field Length
    while ii < length(PAYLOAD) % Each t (each iteration)
        % Slicer: From the DVBS2 guidelines:
        %       The Slicer shall read (i.e. slice) from its input (single input stream),
        %       or from one of its inputs (multiple input streams) a DATA FIELD, composed 
        %       of DFL bits (Data Field Length)
        %       Depending on the applications, the Merger/Slicer shall either allocate a 
        %       number of input bits equal to the maximum DATAFIELD capacity (DFL = Kbch -80),
        %       thus breaking UPs in subsequent DATAFIELDs, or shall allocate an integer
        %       number of UPs within the DATAFIELD, making the DFL variable within the above
        %       specified boundaries.
        datafield = zeros([DFL 1]); % At each DFL block set datafield to 0
        jj = 1; % First bit of datafield
        while jj < DFL && ii < length(PAYLOAD) % while the Data field is not filled 
            % Mode adaptation reads [bufferSize] bits from its data sources
            try
                buffer = PAYLOAD(ii:ii+bufferSize-1); % Read bufferSize from source TODO: Maybe datasource.read()?
                datafield(jj:jj+bufferSize-1) = buffer; % Appends them to the data field
            catch
                buffer = PAYLOAD(ii:end); % Read the rest (what's left)
                datafield(jj:jj+bufferSize) = buffer; % Appends them to the data field
            end

            jj = jj + bufferSize; % Keeps filling data field
            ii = ii + bufferSize; % Keeps reading the next bufferSize bits
        end % When datafield is filled it goes on to send the frame

        % ==== Transmitter
        upperBound = ceil((idx-1)*DFL / dvb.UPL); % Next number of UP that will be sent
        param.syncd = upperBound*dvb.UPL - (idx-1) * DFL; % Sent distance to next sync byte
        param.SNR = SNR(i);
        % Calls transmit on a parallel worker with datafield, dvb, and param as parameters
        transmitFutures(idx) = parfeval(@transmit, 1, datafield, dvb, param);
        
        
        idx = idx + 1;
    end

    % ===== Receiver ======
    receiveFutures = afterEach(transmitFutures, @(data) receive(data, dvb), 1);
    Rx_PAYLOAD = fetchOutputs(receiveFutures);    
    
    % ===== Error statistics ======
    nErrors = biterr(PAYLOAD, Rx_PAYLOAD); % Calculate the number of bit errors
    berEst(i) = nErrors/length(PAYLOAD);

end
 
semilogy(SNR,berEst)
grid
legend('Estimated BER')
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')

%% Utility functions:
% - transmit
% - receive

function CHANNELOUT = transmit(DATAFIELD, dvb, param)
    BBPACKET = TModeAdaptation(DATAFIELD, dvb, param); % 1.- Mode Adaptation
    BBFRAME = TStreamAdaptation(BBPACKET, dvb); % 2.- Stream Adaptation:
    FECFRAME = FECencoding(BBFRAME, dvb); % 3.- Forward Error Correction
    XFECFRAME = map(FECFRAME, dvb); % 4.- Mapping
    PLFRAME = XFECFRAME; %PLFrameFwrd(XFECFRAME, dvb); % 5.- Physical Layer Framming
    SIGNAL = BBFilterAndQModulate(PLFRAME, dvb); % 6.- Base-Band Filtering
    
    % ===== Channel ======
    CHANNELOUT = awgn(SIGNAL, param.SNR); %chan(SIGNAL, -5);
end

function DATAFIELD = receive(CHANNELOUT, dvb)
    disp("Receiving packet!");
    PLFRAME = BBFilterAndQDemodulate(CHANNELOUT, dvb); % 6.- Base-Band Filtering
    XFECFRAME = PLFRAME; % PLFrameFwrd(PLFRAME, dvb); % TODO: 5.- Physical Layer Framming
    FECFRAME = demap(XFECFRAME, dvb); % 4.- Demapping
    BBFRAME = FECdecoding(FECFRAME, dvb); % 3.- Forward Error Correction
    BBPACKET = RStreamAdaptation(BBFRAME, dvb); % 2.- Stream Adaptation    
    DATAFIELD = RModeAdaptation(BBPACKET); % 1.- Mode Adaptation
end