%The frame synchronisation block consists of 2 steps
%This part of the block will apply the first function to sections of the
%data stream and generate candidates for possible positions of the frame.
%Length of the search window depends on the modulation scheme.

function [indices, correlations] = PeakSearch(input, dvb)
    correlations = [];
    indices = [];
    switch (dvb.ModulationType)
        case 'QPSK'
            searchwindowsize = dvb.LDPCCodewordLength/2 + 90;
        case '8PSK'
            searchwindowsize = dvb.LDPCCodewordLength/3 + 90;
        case '16APSK'
            searchwindowsize = dvb.LDPCCodewordLength/4 + 90;
        case '32APSK'
            searchwindowsize = dvb.LDPCCodewordLength/5 + 90;
    end
    
    %disp(searchwindowsize);
    
    searchwindows = input;
    if (mod(numel(searchwindows),searchwindowsize)~=0)
        searchwindows(end+1:searchwindowsize*ceil(numel(searchwindows)/searchwindowsize)) = 0;
        searchwindows = reshape(searchwindows, searchwindowsize , []);
        searchwindows = searchwindows(:,1:end-1);
    else
        searchwindows = reshape(searchwindows, searchwindowsize , []);
    end
    
    for i = 1:size(searchwindows,2)
        [correlation, index] = Correlator(searchwindows(:,i));
        correlations(end+1) = correlation;
        index = index + (i-1)*searchwindowsize;
        indices(end+1) = index;
        %TODO: decode corresponding header
    end
end
