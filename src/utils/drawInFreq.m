function X = drawInFreq(x,type, fs, name)
%drawInFreq Plots x in frequency domain and returns the DFT of x
%   @param x: Time domain signal to be plotted and transformed
%   @param type: The diferent types of plot
%   @param fs: Sampling frequency to use for plotting
    L=length(x);   
    power = ceil(log(L) / log(2));
    NFFT=2^power; % Points to use for the fft 
    X=fftshift(fft(x,NFFT));         % TODO: Plot better: Blackman-Harris

    switch type
        case 'FREQ'
            fVals=fs*(-NFFT/2:NFFT/2-1)/NFFT; % DFT Sample points       
            plot(fVals,abs(X),'b');      
            title('Double Sided FFT - with FFTShift');       
            xlabel('Frequency (Hz)')         
            ylabel('|DFT Values|');
            
        case 'NOR_FREQ'
            fVals=(-NFFT/2:NFFT/2-1)/NFFT; %DFT Sample points        
            plot(fVals,abs(X));      
            title('Double Sided FFT - with FFTShift');       
            xlabel('Normalized Frequency')       
            ylabel('DFT Values');
             
        case 'PSD'
            Px=X.*conj(X)/(NFFT*L); %Power of each freq components       
            fVals=fs*(-NFFT/2:NFFT/2-1)/NFFT;        
            plot(fVals,Px,'b');      
            title('Power Spectral Density');         
            xlabel('Frequency (Hz)')         
            ylabel('Power');
        
        case 'dB'
            X_db = 20*log10(abs(X)/max(abs(X)));      
            fVals=fs*(-NFFT/2:NFFT/2-1)/NFFT;        
            plot(fVals,X_db,'b');      
            title(strcat('Power Spectral Density: ',name));         
            xlabel('Frequency (Hz)')         
            ylabel('Power (dB)');
            
        otherwise
            error(message('dvbs2:Unsuported plot mode'));
    end
    
    grid on;
end

