function dvb = setModulationParameters(dvb)
%SETMODULATIONPARAMETERS Set all parameters necessary for the modulation 
% and demodulation of the signal
%   Detailed explanation goes here
    % Modulation

    switch dvb.ModulationType
        case 'BPSK'
            Ry = [+1; -1];
            dvb.Constellation = complex(Ry);
            dvb.SymbolMapping = [0 1];
            dvb.PhaseOffset = 0;
            warning(message('setModulationParameters:InvalidModulationType')); 
        case 'QPSK'
            Ry = [+1; +1; -1; -1];
            Iy = [+1; -1; +1; -1];
            dvb.Constellation = (Ry + 1i*Iy)/sqrt(2);
            dvb.SymbolMapping = [0 2 3 1];
            dvb.PhaseOffset = pi/4;
        case '8PSK'
            A = sqrt(1/2);
            Ry = [+A +1 -1 -A  0 +A -A  0].';
            Iy = [+A  0  0 -A  1 -A +A -1].';
            dvb.Constellation = Ry + 1i*Iy;
            dvb.SymbolMapping  = [1 0 4 6 2 3 7 5];
            dvb.PhaseOffset = 0;
        case '16APSK'
            dvb.Constellation = dvbsapskmod((0:15)', 16, 's2', ...
                            dvb.LDPCCodeRate, 'UnitAveragePower', true);
            dvb.SymbolMapping = [12 14 15 13 4 0 8 10 2  6 7 3 11 9 1 5];
            dvb.PhaseOffset = [pi/4 pi/12];
        case '32APSK'
            dvb.Constellation = dvbsapskmod((0:31)', 32, 's2', ...
                              dvb.LDPCCodeRate, 'UnitAveragePower', true);
            dvb.SymbolMapping = [15 13 29 31 14 6 7 5 4 12 28 20 21 23 22 30 ...
                                  11 10 2 3 1 0 8 9 25 24 16 17 19 18 26 27];
            dvb.PhaseOffset = [pi/4 pi/12 pi/16];
        otherwise
            error(message('setModulationParameters:ModulationUnsupported'));
    end

    numModLevels = length(dvb.Constellation);
    dvb.BitsPerSymbol = log2(numModLevels);
    dvb.ModulationOrder = 2^dvb.BitsPerSymbol;
    
    % == Scatter Plot ==
    % Create a scatter plot to view the received constellation.   
    dvb.ConstellationDiagram = comm.ConstellationDiagram(...
                                'SamplesPerSymbol',       1, ...
                                'ReferenceConstellation', dvb.Constellation, ...
                                'XLimits',                [-5 5], ...
                                'YLimits',                [-5 5]);
                                
end

