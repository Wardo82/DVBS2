function FECFRAME = FECencoding(BBFRAME, dvb)
    %% 5.3 FEC encoding:
    % @param BBFRAME: Base Band Frames Stream of k bits of information to be send.
    % @return FECFRAME: Stream of 64 800 bits after encoding and
    % interleaving.
    rate = dvb.LDPCCodeRate;

    %% BCH inner code:
    % Create BCH encoder from the comm library
    encbch = comm.BCHEncoder('CodewordLength', dvb.BCHCodewordLength, ...
                            'MessageLength', dvb.BCHMessageLength, ...
                            'PrimitivePolynomialSource', 'Property', ...
                            'PrimitivePolynomial', dvb.BCHPrimPoly, ...
                            'GeneratorPolynomialSource', 'Property', ...
                            'GeneratorPolynomial', dvb.BCHGenPoly, ...
                            'CheckGeneratorPolynomial', true);
                        
    % Encode frame using BCH object                  
    bchEncOut = encbch(BBFRAME);                    
                 
    %% LDPC outer code:
    % Parity check matrix using dvbs2ldpc MATLAB function, with code rate
    % as argument.
    LDPCParityCheckMatrix = dvbs2ldpc(str2num(rate));
    % Create a LDPC encoder from the comm library
    encldpc = comm.LDPCEncoder(LDPCParityCheckMatrix);
    % Encode frame using LDPC object
    ldpcEncOut = encldpc(bchEncOut); 
                        
    %% Interl1eaver
    % For 8PSK, 16APSK, and 32APSK modulation formats, the output of the LDPC encoder shall be
    % bit interleaved using a block interleaver
    intrlvr = comm.BlockInterleaver((1:dvb.LDPCCodewordLength)');
    FECFRAME = intrlvr(ldpcEncOut);
end