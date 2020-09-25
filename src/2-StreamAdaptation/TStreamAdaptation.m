function BBFRAME = TStreamAdaptation(BBPACKET,dvb)
%TSTREAMADAPTATION Stream adaptation provides padding to complete a constant
% length (Kbch bits) BBFRAME and scrambling.
% @arg BBPACKET: The packet comming from the mode adaptation module.
% @arg dvb: The dvb object
% @return BBFRAME: The base band frame of Kbch bits after randomization.

% Padding: Appends Kbch-DFL-80 zero bits after DATAFIELD section of a
% BBPACKET to reach a constant length for each frame of Kbch.
DFL = length(BBPACKET(81:end)); % The length of the DATA FIELD section
padding = dvb.BCHMessageLength-DFL-80; % The required padding
BBFRAME = padarray(BBPACKET, [padding 0]); % Append the zeroes

% BB scrambling: The complete BBFRAME shall be randomized.
% To do so we use MATLAB's Scrambler object, use polynomial 1 + x^14 + x^15
% for the Pseudo Random Binary Sequence (PRBS) and the sequence 100101010000000
% as initial state of the registers (figure 5 of the guidelines) for every 
% BBFRAME.
bbscrambler = comm.Scrambler(2, [1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1],... 
                                [1 0 0 1 0 1 0 1 0 0 0 0 0 0 0]);
    
% Whole frame is scrambled
BBFRAME = bbscrambler(BBFRAME);

end

