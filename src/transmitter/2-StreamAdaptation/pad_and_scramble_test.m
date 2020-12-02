Kbch = 48408;
frame = randi([0 1], Kbch, 1);
                            
% Scramble the frame
random_frame = pad_and_scramble(frame); % Sent frame
recvd_frame = descramble_and_unpad(random_frame); % Received frame

if ~(isequal(frame, recvd_frame))
    error("The codes do not match.");
end