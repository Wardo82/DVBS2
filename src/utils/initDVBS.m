function DVB = initDVBS()
    subsystem = {'QPSK 1/4', ...
                'QPSK 1/3', 'QPSK 2/5', 'QPSK 1/2', 'QPSK 3/5', 'QPSK 2/3', ...
                'QPSK 3/4', 'QPSK 4/5', 'QPSK 5/6', 'QPSK 8/9', 'QPSK 9/10',...
                '8PSK 3/5', '8PSK 4/5', '8PSK 2/3', '8PSK 3/4', '8PSK 5/6', ...
                '8PSK 8/9', '8PSK 9/10', '16APSK 2/3', '16APSK 3/4', ...
                '16APSK 4/5', '16APSK 5/6', '16APSK 8/9', '16APSK 9/10', ...
                '32APSK 3/4', '32APSK 4/5', '32APSK 5/6', '32APSK 8/9', ...
                '32APSK 9/10'};
    dvb.MODCOD = 12; % Index of the desired combination, i.e. i = 1 for QPSK 1/4
    subsystemType = split(subsystem{dvb.MODCOD}, ' '); % Constellation and LDPC code rate
    dvb.EsNodB = 10; % Energy per symbol to noise PSD ratio in dB

    % ==== Initialize dvb object ====
    % Set up system parameters and display the parameter structure
    
    % == LDPC parameters ==
    dvb.LDPCmaxNumOfIterations = 50;
    dvb.LDPCCodeRate = subsystemType{2};
    dvb.LDPCtype = 'long';
    if strcmp(dvb.LDPCtype, 'long')
        dvb.LDPCCodewordLength = 64800;
    else
        dvb.LDPCCodewordLength = 16200;
    end

    % == BCH code parameters ==
    [nBCH, kBCH, primBCH, genBCH] = getbchparameters(dvb);
    dvb.BCHCodewordLength = nBCH;
    dvb.BCHMessageLength = kBCH;
    dvb.BCHPrimPoly = primBCH;
    dvb.BCHGenPoly = genBCH;
    
    % == Modulation parameters ==
    dvb.ModulationType = subsystemType{1};
    dvb = setModulationParameters(dvb);
    
    % == Interleaver: Section 5.3.3, p. 23 ==
    % No interleaving (for BPSK and QPSK)
    dvb.InterleaveOrder = (1:dvb.LDPCCodewordLength).';

    switch dvb.ModulationType
        case '8PSK'
            Ncol = 3;
            iTemp = reshape(dvb.InterleaveOrder, ...
                dvb.LDPCCodewordLength/Ncol, Ncol).';
            if dvb.LDPCCodeRate == 3/5
                % Special Case - Figure 8
                iTemp = flipud(iTemp);
            end
            dvb.InterleaveOrder = iTemp(:);
        case '16APSK'
            Ncol = 4;
            iTemp = reshape(dvb.InterleaveOrder, ...
                dvb.LDPCCodewordLength/Ncol, Ncol).';
            dvb.InterleaveOrder = iTemp(:);
        case '32APSK'
            Ncol = 5;
            iTemp = reshape(dvb.InterleaveOrder, ...
                dvb.LDPCCodewordLength/Ncol, Ncol).';
            dvb.InterleaveOrder = iTemp(:);
    end
    
    % == Filter parameters ==
    dvb.SamplesPerSymbol = 8;
    dvb.RolloffFactor = 0.25;

    % == Noise variance for channel and estimate for LDPC coding ==
    numModLevels = length(dvb.Constellation);
    dvb.NoiseVar  = 1/(10^(dvb.EsNodB/10)); % TODO: Ask "why?"
    dvb.NoiseVarEst = dvb.NoiseVar/(2*sin(pi/numModLevels));

    % == Verbose = True for detailed run ==
    dvb.verbose = true;

    % == Specifications for Mode Adaptation ==
    dvb.UPL = 188 * 8; % User Packet Length
    dvb.UPSync = 0; % [True/False] If UP has SYNC byte appended
    dvb.bufferSize = 8; % Buffer size of 8 bits
    dvb.DFL = dvb.BCHMessageLength-80; % Data Field Length

    % Display system parameters
    DVB = dvb;
end