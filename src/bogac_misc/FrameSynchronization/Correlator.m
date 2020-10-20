%The frame synchronisation block consists of 2 steps

%in the first part of this function a circuit including a shift register will be simulated
%shift register consists of 2 parts: one for SOF and one for PLSC

function [correlation, index] = Correlator(input)
    
    absval = [];
    diffdecoded = [];
    taps = [];
    
    %Differential Decoding
    for i = 2:numel(input)
        diffdecoded(i-1) = conj(input(i-1))*input(i);
    end
    diffdecoded = diffdecoded.';
    
    %Dummy header generator
    SOF = [0 flip(de2bi(26029698))];
    MODCOD = [zeros(1,5 - size(de2bi(1),2)) de2bi(1)];
    TYPE = [0 1];
    PLS = [MODCOD TYPE];
    PLS = EncodePls(PLS);
    DUMMYPLHEADER = [SOF PLS];
    DUMMYPLHEADER = ModulatePLHeader(DUMMYPLHEADER);
    
    for i = 2:numel(DUMMYPLHEADER)
        diffdecodedheader(i-1) = conj(DUMMYPLHEADER(i-1))*DUMMYPLHEADER(i);
    end
    
    
    taps(1:25) = conj(diffdecodedheader(1:25));
    taps(27:2:89) = conj(diffdecodedheader(27:2:89));
    
    %simulated shift register start
    for n = 1:(size(diffdecoded,1) - 89)
        shiftreg = diffdecoded(1:89);
        
        sum1 = 0;
        sum2 = 0;
        
        for i = 1:25
            sum1 = sum1 + shiftreg(i)*taps(i);
        end
        
        for j = 27:2:89
            sum2 = sum2 + shiftreg(j)*taps(j);
        end
        absval(end+1) = max([abs(sum1 + sum2) abs(sum1 - sum2)]);
        
        %the bit stream is shifted 1 symbol
        diffdecoded = circshift(diffdecoded,-1);    
    end
    [correlation, index] = max(absval);
end
