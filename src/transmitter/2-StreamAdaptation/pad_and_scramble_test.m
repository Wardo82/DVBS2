Kbch = 48408;
frame = uint32(randi([0 1], Kbch, 1));
                            
% Scramble the frame
dvbs2_scrambler = scrambler();
random_frame = dvbs2_scrambler.step(frame);
recvd_frame = descramble_and_unpad(random_frame); % Received frame

if ~(isequal(frame, recvd_frame))
    error("The codes do not match.");
end