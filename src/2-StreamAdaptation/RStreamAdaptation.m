function BBPACKET = RStreamAdaptation(BBFRAME,dvb)
%RSTREAMADAPTATION Stream adaptation at the receiver reverses the scrambling
% and takes the padding out.
% @arg BBFRAME: The frame comming from the mode error correction module.
% @arg dvb: The dvb object
% @return BBPACKET: The base band packet consisting of [HEADER|DATAFIELD]

    % BB scrambling: The complete BBFRAME shall be derandomized.
    % Generationg descrambler
    descrambler = comm.Descrambler(2, [1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1],... 
                                      [1 0 0 1 0 1 0 1 0 0 0 0 0 0 0]);

    % Descrambling the received bit sequence
    BBPACKET = descrambler(BBFRAME);

    % Padding: Takes Kbch-DFL-80 zero bits after DATAFIELD.
    % DFL is stored in the header
    HEADER = BBPACKET(1:80); % First 80 bits are the HEADER
    DFL = bi2de(HEADER(33:48)'); % DFL is 2 bytes starting at the 32nd
    padding = 0; %dvb.BCHMessageLength-DFL-80; % The required padding
    DATAFIELD =  BBPACKET(81:end-padding); % Take the zeroes
    
    % Return the baseband packet
    BBPACKET = [HEADER; DATAFIELD];

end

