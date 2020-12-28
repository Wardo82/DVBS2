function fec_frame = psk_demodulate(inphase, quadrature, bits_per_symbol)
% Hard decision demodulation for 8psk.
    l = length(inphase);
    fec_frame = int32(zeros(bits_per_symbol * l, 1));
    for i = 1:l
        angle = atan(quadrature(i) / inphase(i));
        if inphase(i) < 0 
            if quadrature(i) >= 0
                angle = pi + angle;
            else
                angle = angle - pi;
            end
        end
        bit_sequence = [0 0 0];     
        if angle >= -pi/8 && angle < pi/8           % 0 degrees
            bit_sequence = [0 0 1];
        elseif angle >= pi/8 && angle < 3*pi/8      % 45 degrees
            bit_sequence = [0 0 0];
        elseif angle >= 3*pi/8 && angle < 5*pi/8    % 90 degrees
            bit_sequence = [1 0 0];
        elseif angle >= 5*pi/8 && angle < 7*pi/8    % 135 degrees
            bit_sequence = [1 1 0];
        elseif angle >= 7*pi/8 || angle < -7*pi/8    % 180 degrees
            bit_sequence = [0 1 0];
        elseif angle >= -7*pi/8 && angle < -5*pi/8   % 225 degrees
            bit_sequence = [0 1 1];
        elseif angle >= -5*pi/8 && angle < -3*pi/8  % 270 degrees
            bit_sequence = [1 1 1];
        elseif angle >= -3*pi/8 && angle < -pi/8   % 315 degrees
            bit_sequence = [1 0 1];
        end
        fec_frame((i-1)*3 + 1:(i-1)*3 + 3) = bit_sequence;
    end
end

