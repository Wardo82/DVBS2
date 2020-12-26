 function [I, Q] = psk_modulate(fec_frame, bits_per_symbol, A)
    l = length(fec_frame)/bits_per_symbol;
    I = zeros(l, 1);
    Q = zeros(l, 1);
    frame_reshape = reshape(fec_frame, [bits_per_symbol l]);
    for index = 1:l
        phase = 0; % Start at phase 0
        input_bits = frame_reshape(:, index);
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
        I(index) = A*cos(phase*pi/180);
        Q(index) = A*sin(phase*pi/180);
    end
end