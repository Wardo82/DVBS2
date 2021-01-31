Kbch = 48408;
frame = (randi([0 1], Kbch, 1));
                            
% Scramble the frame
dvbs2_scrambler = scrambler();
random_frame = dvbs2_scrambler.step(frame);
recvd_frame = descramble_and_unpad(random_frame); % Received frame

bbscrambler = comm.Scrambler(2, [1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1],... 
                                [1 0 0 1 0 1 0 1 0 0 0 0 0 0 0]);
    
% Whole frame is scrambled
BBFRAME = bbscrambler(frame);

if ~(isequal(frame, recvd_frame))
    error("The codes do not match.");
end