%--------------------------------------------------------------------------
function [nBCH, kBCH, primBCH, genBCH] = getbchparameters(dvb)
    % getbchparameters: Calculate the DVBS2 parameters for the BCH encoding
    % based on the LDPC code rate R
    % @param dvb: DVBVS2 object containing all dvb usefull information
    % @return nBCH: BCH codeword length (coded)
    % @return kBCH: BCH message length (uncoded)
    % @return genBCH: Generator polynomial for a t-error correcting BCH
    % code
    R = dvb.LDPCCodeRate;
    type = dvb.LDPCtype;
    
    if strcmp(type, 'long')
        % Table 5.a
        table = [1/4 16008 16200 12 64800 
                   1/3 21408 21600 12 64800 
                   2/5 25728 25920 12 64800
                   1/2 32208 32400 12 64800
                   3/5 38688 38880 12 64800
                   2/3 43040 43200 10 64800
                   3/4 48408 48600 12 64800
                   4/5 51648 51840 12 64800
                   5/6 53840 54000 10 64800
                   8/9  57472 57600 8 64800
                   9/10 58192 58320 8 64800];
    else 
        % Table 5.b
         table = [1/4 3072 3240 12 16200
                    1/3 5232 5400 12 16200
                    2/5 6312 6480 12 16200
                    1/2 7032 7200 12 16200
                    3/5 9552 9720 12 16200
                    2/3 10632 10800 12 16200
                    3/4 11712 11880 12 16200
                    4/5 12432 12600 12 16200
                    5/6 13152 13320 12 16200
                    8/9 14232 14400 12 16200];
    end
    
    rowidx = find(abs(table(:,1)-str2num(R))<.001);
    kBCH = table(rowidx,2);
    nBCH = table(rowidx,3);
    tBCH = table(rowidx,4);
    
    % Calculate the generator polynomial depending on the t-error
    % correcting capability.
    if strcmp(type, 'long')
         
        a8 = [1  0  0  0  1  1  1  0  0  0  0  0  0  0  1 ...
            1  1  0  0  1  0  0  1  0  1  0  1  0  1  1 ...
            1  1  1  0  1  1  1  0  0  0  1  0  0  1  0 ...
            0  1  1  1  1  0  0  1  0  1  1  1  1  0  1 ...
            1  1  1  0  1  0  0  0  1  1  0  0  1  1  1 ...
            1  1  1  1  0  0  0  1  1  0  1  1  0  1  0 ...
            1  1  1  0  1  0  1  0  0  0  0  0  1  0  0 ...
            1  1  1  1  1  0  0  1  0  1  1  0  0  1  1 ...
            0  0  0  1  0  1  0  1  1];

        a10 = [1  0  1  1  0  0  0  0  0  0  0  0  1  0  1 ...
            0  1  0  0  0  0  1  1  0  0  1  1  1  0  1 ...
            1  0  1  1  1  1  1  1  1  0  0  0  0  1  0 ...
            1  0  1  0  0  0  1  1  0  0  1  1  0  0  0 ...
            1  1  1  1  1  0  1  1  0  1  0  1  0  0  1 ...
            1  1  1  0  0  0  0  1  0  1  0  1  1  1  0 ...
            0  0  0  0  0  1  1  1  1  1  0  1  1  1  1 ...
            1  1  0  1  0  0  0  1  0  0  1  0  0  0  1 ...
            1  0  0  0  0  0  0  0  1  1  0  1  1  1  0 ...
            0  0  1  0  1  1  1  0  1  1  0  1  1  0  0 ...
            1  0  1  1  0  0  1  0  0  0  1];

        a12 = [1  0  1  0  0  1  1  1  0  0  0  1  0  0  1 ...
            1  0  0  0  0  0  1  1  1  0  1  0  0  0  0 ...
            0  1  1  1  0  0  0  0  1  0  0  0  1  0  1 ...
            1  1  0  0  0  1  0  1  0  0  0  1  0  0  0 ...
            1  1  1  0  0  0  1  0  1  0  0  0  0  1  1 ...
            0  0  1  1  1  1  0  0  1  0  1  1  0  0  1 ...
            1  0  1  1  0  0  0  1  1  0  1  1  1  0  0 ...
            0  0  1  1  0  1  0  1  0  0  0  0  1  0  0 ...
            0  1  0  0  0  1  0  0  1  0  0  0  0  0  0 ...
            1  1  0  1  0  0  0  1  1  1  1  0  0  0  0 ...
            1  0  1  1  1  1  1  0  1  1  1  0  1  1  0 ...
            0  1  1  0  0  0  0  0  0  0  1  0  0  1  0 ...
            1  0  1  0  1  1  1  1  0  0  1  1  1];

        switch tBCH
        case 8
            genBCH = a8;
        case 10
            genBCH = a10;
        case 12
            genBCH = a12;
        end
        
        primBCH = de2bi(primpoly(16,'min'), 'left-msb');
    else % For the short encoding version
        % === Table of polynomials for the short version ===
        syms D
        g1 = sym2poly(1 + D + D^3 + D^5 + D^14);
        g2 = sym2poly(1 + D^6 + D^8 + D^11 + D^14);
        g3 = sym2poly(1 + D + D^2 + D^6 + D^9 + D^10 + D^14);
        g4 = sym2poly(1 + D^4 + D^7 + D^8 + D^10 + D^12 + D^14);
        g5 = sym2poly(1 + D^2 + D^4 + D^6 + D^8 + D^9 + D^11 + D^13 + D^14);
        g6 = sym2poly(1 + D^3 + D^7 + D^8 + D^9 + D^13 + D^14);
        g7 = sym2poly(1 + D^2 + D^5 + D^6 + D^7 + D^10 + D^11 + D^13 + D^14);
        g8 = sym2poly(1 + D^5 + D^8 + D^9 + D^10 + D^11 + D^14);
        g9 = sym2poly(1 + D + D^2 + D^3 + D^9 + D^10 + D^14);
        g10 = sym2poly(1 + D^3 + D^6 + D^9 + D^11 + D^12 + D^14);
        g11 = sym2poly(1 + D^4 + D^11 + D^12 + D^14);
        g12 = sym2poly(1 + D + D^2 + D^3 + D^5 + D^6 + D^7 + D^8 + D^10 + D^13 + D^14);
        pols = [g1; g2; g3; g4; g5; g6;...
                g7; g8; g9; g10; g11; g12];
        
        % Multiply (convolve) the t first polynomials to get the generator
        tmp = pols(1, :);
        for i = 2:tBCH
            tmp = gfconv(tmp, pols(i, :));
        end
        genBCH = tmp;
        
        primBCH = de2bi(primpoly(14,'min'), 'left-msb');
    end
    
end