function BBFRAME = FECdecoding(FECFRAME, dvb)
    %% 5.3 FEC decoding:
    
    rate = dvb.LDPCCodeRate;
    type = dvb.LDPCtype;
    
    if strcmp(type,'short')
        n_ldpc = 16200;
    elseif strcmp(type, 'long')
        n_ldpc = 64800;
    end
    
    %% Interl1eaver
    % For 8PSK, 16APSK, and 32APSK modulation formats, the output of the LDPC encoder shall be
    % bit interleaved using a block interleaver
    if strcmp(dvb.ModulationType, 'QPSK') % If using QPSK, don't interleave
        deinterlvrOut = FECFRAME;
    else
        deintrlvr = comm.BlockDeinterleaver(dvb.InterleaveOrder);
        deinterlvrOut = deintrlvr(FECFRAME);
    end
    
    %% LDPC outer code:
    % Parity check matrix using dvbs2ldpc MATLAB function, with code rate
    % as argument.
    
    LDPCParityCheckMatrix = dvbs2ldpc(str2num(rate));
    % Create a LDPC decoder from the comm library
    decldpc = comm.LDPCDecoder(LDPCParityCheckMatrix, ...
        'IterationTerminationCondition', 'Parity check satisfied', ...
        'MaximumIterationCount',         50, ...
        'NumIterationsOutputPort',       true);

    % Decode frame using LDPC object
    [ldpcDecOut, ~] = decldpc(deinterlvrOut);
    
    %% BCH inner code:
    % Create BCH decoder from the comm library
    decbch = comm.BCHDecoder('CodewordLength', dvb.BCHCodewordLength, ...
                            'MessageLength', dvb.BCHMessageLength, ...
                            'PrimitivePolynomialSource', 'Property', ...
                            'PrimitivePolynomial', dvb.BCHPrimPoly, ...
                            'GeneratorPolynomialSource', 'Property', ...
                            'GeneratorPolynomial', dvb.BCHGenPoly, ...
                            'CheckGeneratorPolynomial', false);
                        
    % Decode frame using BCH object                  
    BBFRAME = decbch(ldpcDecOut);                    
                 
end