function SIGNAL = BBFilterAndQModulate(PL_FRAME, dvb)
%BB_filter_and_Q_modulate Summary of this function goes here
%   Filter the signal with a RC filter
    % RRC filter
    % TODO: Review theory
    txfilter = comm.RaisedCosineTransmitFilter('Shape', 'Square Root',...
                            'FilterSpanInSymbols', 10,... % "Should be way higher than the Samples per Symbol"
                            'OutputSamplesPerSymbol', dvb.SamplesPerSymbol, ...
                            'RolloffFactor', dvb.RolloffFactor); 
    % b = coeffs(txfilter);
    % TODO: ask -> txfilter.Gain = 1/sum(b.Numerator);
    delay = txfilter.FilterSpanInSymbols; % Delay of the filter
    
    PL_FRAME = [PL_FRAME; zeros(delay, 1)]; 
    
    SIGNAL = txfilter(PL_FRAME);
    
    %coeff = coeffs(txfilter); % Get the coefficients of the filter
    %b = coeff.Numerator;
    %a = 1;                                       
    %SIGNAL = filter(b, a, PL_FRAME); % output vector
    
    if dvb.verbose
        % Visualize the impulse response
        fvtool(txfilter);
        % Plot the input signal
        figure;
        subplot(2,1,1);
        drawInFreq(PL_FRAME, 'dB',3000, 'Physical layer frame');

        % Plot the output signal after filtering
        subplot(2,1,2);
        drawInFreq(SIGNAL, 'dB', 3000, 'Filtered PL frame');
    end
end

