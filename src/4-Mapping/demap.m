function FECFRAME = demap(XFECFRAME,dvb)
% Demap: Realizes the demapping of the FECFRAME bits into the desired
%modulation scheme
% @param XFECFRAME: Stream of 64800 (or 16200 for short) complex values (I,Q) to be
%        converted into bit stream. 
% @param dvb: dvb struct containing all necessary parameters
   
    % Demodulator object according to the standard
    pskDemodulator = comm.PSKDemodulator(...
                            'ModulationOrder', dvb.ModulationOrder, ...
                            'BitOutput', true, ...
                            'PhaseOffset', dvb.PhaseOffset, ...
                            'SymbolMapping', 'Gray', ... %'CustomSymbolMapping', dvb.SymbolMapping, ...
                            'DecisionMethod', 'Approximate log-likelihood ratio', ...
                            'VarianceSource', 'Property', ...
                            'Variance', dvb.NoiseVar);

    if dvb.ModulationOrder == 4 || dvb.ModulationOrder == 8
        FECFRAME = pskDemodulator(XFECFRAME);
    else
        FECFRAME = dvbsapskdemod(XFECFRAME, dvb.ModulationOrder, 's2', ...
                                dvb.LDPCCodeRate, 'OutputType', 'approxllr', 'NoiseVar', ...
                                dvb.NoiseVar, 'UnitAveragePower', true);
    end
    
    if dvb.verbose
        release(dvb.ConstellationDiagram);
        dvb.ConstellationDiagram(XFECFRAME); % Plot received stream of symbols
    end
end

