function FECFRAME = FECencoding(BBFRAME, dvb)
    %% 5.3 FEC encoding:
    % @param BBFRAME: Base Band Frames Stream of k bits of information to be send.
    % @return FECFRAME: Stream of 64 800 bits after encoding and
    % interleaving.
    rate = dvb.LDPCCodeRate;

    %% BCH outer code:
    % Create BCH encoder from the comm library
%    MATLAB comm library: encbch = comm.BCHEncoder('CodewordLength', dvb.BCHCodewordLength, ...
%                             'MessageLength', dvb.BCHMessageLength, ...
%                             'PrimitivePolynomialSource', 'Property', ...
%                             'PrimitivePolynomial', dvb.BCHPrimPoly, ...
%                             'GeneratorPolynomialSource', 'Property', ...
%                             'GeneratorPolynomial', dvb.BCHGenPoly, ...
%                             'CheckGeneratorPolynomial', true);    
    % MATLAB comm library: bchEncOut = encbch(BBFRAME);  
    bch_encoder = dvb.bch_object;
    bch_encoder_output = bch_encoder.encode(BBFRAME);       
    %% LDPC inner code:
    % Parity check matrix using dvbs2ldpc MATLAB function, with code rate
    % as argument.
    LDPCParityCheckMatrix = dvbs2ldpc(str2num(rate));
    % Create a LDPC encoder from the comm library
    encldpc = comm.LDPCEncoder(LDPCParityCheckMatrix);
    % Encode frame using LDPC object
    ldpcEncOut = encldpc(bch_encoder_output); 
                        
    %% Interl1eaver
    % For 8PSK, 16APSK, and 32APSK modulation formats, the output of the LDPC encoder shall be
    % bit interleaved using a block interleaver
    if strcmp(dvb.ModulationType, 'QPSK') % If using QPSK, don't interleave
        FECFRAME = ldpcEncOut;
    else
        % MATLAB comm library: intrlvr = comm.BlockInterleaver((1:dvb.LDPCCodewordLength)');
        % MATLAB comm library: FECFRAME = intrlvr(ldpcEncOut);
        interleaver = dvb.interleaver_object;
        FECFRAME = interleaver.encode(ldpcEncOut);
    end
end