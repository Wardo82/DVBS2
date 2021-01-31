%% Script to test Interleaver class
dvb = initDVBS();

% Create both objects. Own implementation and MATLAB comm's library
interleaver = Interleaver(dvb);

% Create Interleaver from the comm library
[intrlvr, deinterlvr] = matlab_interlvr(dvb);
                    
%% Payload
% Payload
%img = imread('iu.png'); % Image to be transmitted
%msg = de2bi(img)'; % Matrix of size [8 k] (with k=16008) representing the image in binary form 
% Payload
message = randi([0, 1], dvb.LDPCCodewordLength, 1);

%% Encode frame using BCH object  
interlvr_output = interleaver.encode(message')';

%% Encode frame using MATLAB's comm object
mat_interlvr_output = intrlvr(message);

if isequal(message, deinterlvr(interlvr_output))
    disp("Encoding succesfull: Matlab's and Interleaver class output are equal.");
end

%% Helper functions
%--------------------------------------------------------------------------
function [interleaver, deinterleaver] = matlab_interlvr(dvb)
    % Interleaver: Section 5.3.3, p. 23
    % No interleaving (for BPSK and QPSK)
    dvb.InterleaveOrder = (1:dvb.LDPCCodewordLength).';

    switch dvb.ModulationType
        case '8PSK'
            Ncol = 3;
            iTemp = reshape(dvb.InterleaveOrder, ...
                dvb.LDPCCodewordLength/Ncol, Ncol).';
            if dvb.LDPCCodeRate == 3/5
                % Special Case - Figure 8
                iTemp = flipud(iTemp);
            end
            dvb.InterleaveOrder = iTemp(:);
        case '16APSK'
            Ncol = 4;
            iTemp = reshape(dvb.InterleaveOrder, ...
                dvb.LDPCCodewordLength/Ncol, Ncol).';
            dvb.InterleaveOrder = iTemp(:);
        case '32APSK'
            Ncol = 5;
            iTemp = reshape(dvb.InterleaveOrder, ...
                dvb.LDPCCodewordLength/Ncol, Ncol).';
            dvb.InterleaveOrder = iTemp(:);
    end
    interleaver = comm.BlockInterleaver(dvb.InterleaveOrder);
    deinterleaver = comm.BlockDeinterleaver(dvb.InterleaveOrder);
end
