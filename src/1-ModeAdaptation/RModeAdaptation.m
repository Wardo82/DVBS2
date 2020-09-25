function PAYLOAD = RModeAdaptation(RX_BBPACKET, dvb)
% RModeAdaptation: Takes the header out of the base band packet and returns
%the payload
%   The BBPACKET should be a Header of 80 bits and the payload of DFL bits
    % TODO: We are ignoring the content of the header and many other
    % things,(does shiffting has something to do here?)
    % Get the segments
    HEADER = RX_BBPACKET(1:80); % Header of size 80 bits
    DATAFIELD = RX_BBPACKET(81:end); % Data field of size DFL

    CRC8Encoder = comm.CRCGenerator([8 7 6 4 2 0]); % For error detection

    header = CRC8Encoder(HEADER(1:72)); % CRC8 of the first fields of the header
    if ~isequal(header(74:end),HEADER(74:end)) % If the CRC are not the same
        disp("Error in header. Packet discarded");
        PAYLOAD = zeros(size(DATAFIELD));
        return;
    end
    
    % If the header is good
    MATYPE = header(1:16); % Get the Mode Adaptation type bit string
    UPL = bi2de(header(17:32)'); % Get the User Packet Length
    DFL = bi2de(header(33:48)'); % Get the Data Field Length
    SYNC = header(49:56); % The sync byte
    SYNCD = bi2de(header(57:72)'); % Get the distance to the next SYNC or CRC byte
    
    payload = {DATAFIELD(1:SYNCD)}; % Init payload with the information prior to the first SYNC byte
    
    % Concatenate the User Packets that are after each Sync (or CRC) byte
    ii = SYNCD+1+8; % Start at SYNCD+8 (+1 because of MATLAB) bit of Datafield
    while ii < DFL
        try
            payload{end+1} = DATAFIELD(ii:ii+(UPL-8)); % Append the next UP
        catch
            payload{end+1} = DATAFIELD(ii:end); % Append the next UP until the end
        end
        ii = ii+UPL;
    end
    
    PAYLOAD = cell2mat(payload');
end

