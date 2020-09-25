function [XFECFRAME] = RxPLFrame(PLFRAME,dvb)
    [candidates, correlations] = PeakSearch(PLFRAME,dvb);
    
    for index=candidates
        PLSC = PLFRAME(index+26:index+89);
        demodPLSC = pi2demod(PLSC);
        
        %Descramble the PLSC using the same sequence
        scramblingseq = [0 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 ...
                    0 0 1 0 0 1 0 1 0 1 0 0 1 1 0 1 0 0 0 0 1 0 0 0 1 0 1 ...
                    1 0 1 1 1 1 1 1 0 1 0];      
        descrambledPLSC = bitxor(demodPLSC, scramblingseq);
        
        %TODO: Decode Reed-Muller
        %TODO: reduce the number of bits by a factor of 2
        
    end
end

