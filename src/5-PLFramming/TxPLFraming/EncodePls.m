function [encodedpls] = EncodePls(PLS)
    %Generator matrix for Reed-Muller code
    GENERATORMATRIX = ...
           [0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1;...
            0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1;...
            0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1;...
            0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1;...
            0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;...
            1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
    
    %First 6 bits of the PLS are encoded
    tmp = mod(PLS(1:6) * GENERATORMATRIX, 2);
    
    %if the modulation scheme requires pilots every socond symbol of the
    %PLS field is bitwise complement of previous symbol, otherwise same as
    %the previous symbol
    for i = 1:32
        encodedpls(2*i-1) = tmp(i);
        if PLS(end) == 0
            encodedpls(2*i) = tmp(i);
        else
            encodedpls(2*i) = 1 - tmp(i);
        end
    end
    
    
    %SOF is scrambled with an extended m-sequence
    scramblingseq = [0 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 ...
                    0 0 1 0 0 1 0 1 0 1 0 0 1 1 0 1 0 0 0 0 1 0 0 0 1 0 1 ...
                    1 0 1 1 1 1 1 1 0 1 0];
                
    encodedpls = bitxor(encodedpls, scramblingseq);
end
