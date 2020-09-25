function XFECFRAME = map(FECFRAME,dvb)
% Map: Realizes the mapping of the FECFRAME bits into the desired
%modulation scheme
% @param FECFRAME: Stream of 64800 bits (or 16200 for short) to be
%        converted into paralel stream (I,Q)
% @param dvb: dvb struct containing all necessary parameters
    pskModulator = comm.PSKModulator('ModulationOrder', dvb.ModulationOrder,...
                                     'PhaseOffset', dvb.PhaseOffset,...
                                     'BitInput', true,...
                                     'SymbolMapping', 'Gray'); %,... 'CustomSymbolMapping', dvb.SymbolMapping);
    if dvb.ModulationOrder == 4 || dvb.ModulationOrder == 8
        XFECFRAME = pskModulator(FECFRAME);
    else
        XFECFRAME = dvbsapskmod(FECFRAME, dvb.ModulationOrder, 's2',... 
                                dvb.LDPCCodeRate, 'InputType', 'bit',...
                                'UnitAveragePower', true);
    end
    
end

