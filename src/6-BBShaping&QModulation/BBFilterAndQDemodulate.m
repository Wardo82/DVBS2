function PLFRAME = BBFilterAndQDemodulate(CHANNELOUT, dvb)
%BBFilterAndQDemodulate 
    rx_filter = comm.RaisedCosineReceiveFilter('InputSamplesPerSymbol', dvb.SamplesPerSymbol, ... 
                                               'RolloffFactor', dvb.RolloffFactor); 
    % b = coeffs(rx_filter);
    % TODO: ask -> rx_filter.Gain = 1/sum(b.Numerator);
    
    delay = 10;
    PLFRAME = rx_filter(CHANNELOUT);
    PLFRAME = PLFRAME(delay+1:end);
    % coeff = coeffs(rx_filter); % Get the coefficients of the filter
    % b = coeff.Numerator;
    % a = [1 zeros(1, 7)];                                       
    % PLFRAME = filter(b, a, CHANNELOUT); % output vector
   
    if dvb.verbose
        % Visualize the impulse response
        %fvtool(txfilter);
        
        % Plot the input signal
        figure;
        subplot(2,1,1);
        drawInFreq(CHANNELOUT, 'dB',3000, 'Channel output');

        % Plot the output signal after filtering
        subplot(2,1,2);
        drawInFreq(PLFRAME, 'dB', 3000, 'Filtered PL frame');
    end
end

