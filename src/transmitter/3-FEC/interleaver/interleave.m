function codeword = interleave(message)
%INTERLEAVE For 8PSK, 16APSK, and 32APSK modulation formats, the output of 
% the LDPC encoder shall be bit interleaved using a block interleaver.
% DVBS-2 Section 5.3.3 Bit Interleaver
    codeword = zeros(size(message));
    for i = 1:16200
       codeword(4*(i-1)+1) = message(i);
       codeword(4*(i-1)+2) = message(16200+i);
       codeword(4*(i-1)+3) = message(2*16200+i);
       codeword(4*(i-1)+4) = message(3*16200+i);
    end
end

