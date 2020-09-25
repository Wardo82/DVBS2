function [demodPLS] = pi2demod(input)
    demodPLS = nrSymbolDemodulate(input,'pi/2-BPSK');
    
    for i = 1:length(demodPLS)
        if demodPLS(i) < 0
            demodPLS(i) = 1;
        else
            demodPLS(i) = 0;
        end
    end
end

