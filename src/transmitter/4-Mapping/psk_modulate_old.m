function [I, Q] = psk_modulate_old(input_bits, A)
% 8psk_modulate Maps the bits in a stream of bits to an array of complex
% symbols following an 16APSK modulation scheme.
% @arg input_bit: Must be a vector with only 3 bits. The first
%               bit has to be the most significant bit (MSB).
% @arg A: The amplitude of the desired symbols.
    phase = 0; % Start at phase 0
    if(input_bits(1)==0 && input_bits(2)==0 && input_bits(3)==1)
        phase=0;
    elseif(input_bits(1)==0 && input_bits(2)==0 && input_bits(3)==0)
        phase=45;
    elseif(input_bits(1)==1 && input_bits(2)==0 && input_bits(3)==0)
        phase=90;
    elseif(input_bits(1)==1 && input_bits(2)==1 && input_bits(3)==0)
        phase=135;
    elseif(input_bits(1)==0 && input_bits(2)==1 && input_bits(3)==0)
        phase=180;
    elseif(input_bits(1)==0 && input_bits(2)==1 && input_bits(3)==1)
        phase=225;
    elseif(input_bits(1)==1 && input_bits(2)==1 && input_bits(3)==1)
        phase=270;
    elseif(input_bits(1)==1 && input_bits(2)==0 && input_bits(3)==1)
        phase=315;
    end
    I = A*cos(phase*pi/180);
    Q = A*sin(phase*pi/180);
end

