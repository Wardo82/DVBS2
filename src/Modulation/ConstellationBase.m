classdef ConstellationBase < handle
%ConstellationBase Base class for Modulation objects to calculate 
% and view the constellation
    
%   Copyright 2012-2017 The MathWorks, Inc.
    
methods
    function varargout = constellation(obj)
        %CONSTELLATION  Calculate the ideal signal constellation
        %
        %   y = constellation(OBJ) returns the numerical values of the constellation.
        %
        %   constellation(OBJ) generates a constellation plot.
        %
        if(nargout == 1)
            varargout{1} = commCalcConst(obj);
        else
            commViewConst(obj);
        end
    end
end

methods (Hidden)
    function [constellation, scaling] = commCalcConst(obj)
        % calculate the ideal signal constellation
        % For Modulators, use the output of idea signal as constellation.
        % For Demodulators, use the corresponding Modulator to calculate
        % constellation.
        switch class(obj)
          case {'comm.PSKModulator', 'comm.PSKDemodulator',...
                'comm.gpu.PSKModulator', 'comm.gpu.PSKDemodulator'}
                angleVector = mod(((0:obj.ModulationOrder-1)*2*pi/obj.ModulationOrder)...
                    + obj.PhaseOffset, 2*pi);
                constellation = exp(1i*angleVector.');
                if isreal(constellation)
                    constellation = complex(constellation, 0);
                end 
                
            case {'comm.QPSKModulator','comm.QPSKDemodulator'}
                constellation = [1 1i -1 -1i].'*exp(1i*obj.PhaseOffset);

            case {'comm.OQPSKModulator', 'comm.OQPSKDemodulator'}                  
                constellation = [1 1j -1 -1j].'*exp(1j*(pi/4+obj.PhaseOffset));                     
                
            case {'comm.BPSKModulator', 'comm.BPSKDemodulator'}
                angleVector = mod(([0 1].'*pi) + obj.PhaseOffset, 2*pi);
                constellation = exp(1i*angleVector);
                if isreal(constellation)
                    constellation = complex(constellation, 0);
                end
                
            case {'comm.PAMModulator', 'comm.PAMDemodulator'}
                constellation = (-(obj.ModulationOrder-1):2:(obj.ModulationOrder-1)).';
                if isreal(constellation)
                    constellation = complex(constellation, 0);
                end
                
            case {'comm.RectangularQAMModulator', 'comm.RectangularQAMDemodulator'}
                nbits = log2(obj.ModulationOrder);  %#ok<*MCNPN>
                if ( mod(nbits,2) && strcmpi(obj.SymbolMapping, 'Custom') )
                    % Cross QAM && Custom symbol mapping
                    error(message('comm:commblkuserdefinedmapping:InvalidConstOrdering'));
                end
                if nbits == 1
                    %trivial case, M = 2;
                    constellation = [-1 1].';
                elseif ( mod(nbits,2) && (nbits > 3))
                    % Cross QAM (except M=8)
                    constellation = createCrossConstellation(obj);
                else
                    % Square QAM + M=8
                    constellation = createSquareConstellation(obj);
                end
                constellation = constellation * exp(1i*obj.PhaseOffset);
                if isreal(constellation)
                    constellation = complex(constellation, 0);
                end                       
        end
        scaling = 1;
        % add scaling to 'pam' and 'qam'
        if (isa(obj, 'comm.RectangularQAMModulator')||...
            isa(obj, 'comm.RectangularQAMDemodulator')||...
            isa(obj, 'comm.PAMModulator')||...
            isa(obj, 'comm.PAMDemodulator'))
            switch obj.NormalizationMethod 
                case 'Minimum distance between symbols'
                    scaling = obj.MinimumDistance/2; 
                case 'Average power'
                    scaling = sqrt(obj.AveragePower/(mean(abs(constellation).^2)));
                case 'Peak power'
                    scaling = sqrt(obj.PeakPower/(max(abs(constellation).^2))); 
            end
            constellation = constellation*scaling;
        end
        
    end
    
    function constellation = createCrossConstellation(obj)
        %CREATECROSSCONSTELLATION Computes and returns ideal constellation points for
        % Cross QAM Modulation
        M = obj.ModulationOrder;
        constellation = zeros(M,1);
        nbits = log2(M);
        
        nIbits = (nbits + 1) / 2;
        nQbits = (nbits - 1) / 2;
        mI = 2^nIbits;
        mQ = 2^nQbits;
        for i = 0:M-1
            I_data  = fix(i/2^nQbits);
            Q_data = bitand( i, fix(((M-1)/(2^nIbits))));
            cplx_data = (2 * I_data + 1 - mI) + 1i*(-1 * (2 * Q_data + 1 - mQ));
            
            I_mag = abs(floor(real(cplx_data)));
            if(I_mag > 3 * (mI / 4))
                Q_mag = abs(floor(imag(cplx_data)));
                I_sgn = sign(real(cplx_data));
                Q_sgn = sign(imag(cplx_data));
                if(Q_mag > mQ/2)
                    cplx_data = I_sgn*(I_mag - mI/2) + 1i*( Q_sgn*(2*mQ - Q_mag));
                else
                    cplx_data = I_sgn*(mI - I_mag) + 1i*(Q_sgn*(mQ + Q_mag));
                end
            end
            constellation(i+1) =  real(cplx_data) + 1i*imag(cplx_data);
        end
    end    
    
    function constellation = createSquareConstellation(obj)
        %CREATESQUARECONSTELLATION Computes and returns ideal constellation points for
        % Square QAM Modulation
        
        M = obj.ModulationOrder;
        constellation = zeros(M,1);
        
        % Get the QAM points, for 1 quadrant, expand to all 4 quadrants.
        Const = comm.internal.qam.getIdealConstellation(M);
        newConst = [Const; conj(Const); -Const; -conj(Const) ];
        
        for k = 1:M
            % find the elements with the smallest real component
            ind1 = find(real(newConst) == min(real(newConst)));
            % of those, find the element with the largest imaginary component
            tmpArray = -1i*inf * ones(size(newConst));
            tmpArray(ind1) = newConst(ind1);
            ind2 = find(imag(tmpArray) == max(imag(tmpArray)));
            
            constellation(k)= newConst(ind2);
            %get rid of the old point
            newConst(ind2) = [];
        end
    end

    
    function commViewConst(obj)
        % View the constellation
        [Constellation, scaling] = commCalcConst(obj);
        symMapping = '';
        
        % Choosing parameters and constellation mapping based on modulator type
        switch class(obj)
            case {'comm.RectangularQAMModulator', 'comm.RectangularQAMDemodulator',...
                    'comm.PAMModulator', 'comm.PAMDemodulator'}
                M = obj.ModulationOrder;
                PowType = obj.NormalizationMethod;
                switch PowType %  Normalization method
                    case 'Minimum distance between symbols'
                        MinDist = obj.MinimumDistance;
                        norm_str= ['Min.Dist=' num2str(MinDist)];
                    case 'Average power'
                        AvgPow = obj.AveragePower;
                        % Scale based on Average Power and modem's Min. distance of 2
                        norm_str = ['Avg.Pow.=' num2str(AvgPow) 'W'];
                    case 'Peak power'
                        PeakPow = obj.PeakPower;
                        % Scale based on Peak Power and modem's Min. distance of 2
                        norm_str = ['Peak Pow.=' num2str(PeakPow) 'W'];
                end
                switch class(obj)
                    case 'comm.RectangularQAMModulator'
                        typeStr = 'qam';
                        bitMode = obj.BitInput;
                        title_str = ['Constellation: ' num2str(M) '-'...
                            upper(typeStr) ',' obj.SymbolMapping ' Mapping,'...
                            'PhaseOffset=' num2str(obj.PhaseOffset) 'rad,', norm_str];
                    case 'comm.RectangularQAMDemodulator'
                        typeStr = 'qam';
                        bitMode = obj.BitOutput;
                        title_str = ['Constellation: ' num2str(M) '-'...
                            upper(typeStr) ',' obj.SymbolMapping ' Mapping,'...
                            'PhaseOffset=' num2str(obj.PhaseOffset) 'rad,', norm_str];
                    case'comm.PAMModulator'
                        typeStr = 'pam';
                        bitMode = obj.BitInput;
                        title_str = ['Constellation: ' num2str(M) '-'...
                            upper(typeStr) ',' obj.SymbolMapping ' Mapping,', norm_str];
                    case     'comm.PAMDemodulator'
                        typeStr = 'pam';
                        bitMode = obj.BitOutput;
                        title_str = ['Constellation: ' num2str(M) '-'...
                            upper(typeStr) ',' obj.SymbolMapping ' Mapping,', norm_str];
                end
                
            case {'comm.PSKModulator', 'comm.PSKDemodulator',...
                'comm.gpu.PSKModulator', 'comm.gpu.PSKDemodulator'}
                typeStr = 'psk';
                if (isa(obj, 'comm.PSKModulator') || isa(obj, 'comm.gpu.PSKModulator'))
                    bitMode = obj.BitInput;
                else
                    bitMode = obj.BitOutput;
                end
                M = obj.ModulationOrder;
                title_str = ['Constellation: ' num2str(M) '-'...
                    upper(typeStr) ',' obj.SymbolMapping ' Mapping,'...
                    'PhaseOffset=' num2str(obj.PhaseOffset) 'rad'];
            case {'comm.QPSKModulator', 'comm.QPSKDemodulator'}
                M = 4;
                typeStr = 'qpsk';
                if (isa(obj, 'comm.QPSKModulator'))
                    bitMode = obj.BitInput;
                else
                    bitMode = obj.BitOutput;
                end
                title_str = ['Constellation: ' upper(typeStr) ',' obj.SymbolMapping ' Mapping,'...
                    'PhaseOffset=' num2str(obj.PhaseOffset) 'rad'];
                typeStr = 'psk';
            case {'comm.OQPSKModulator'}
                M = 4;
                typeStr = 'oqpsk';
                bitMode = obj.BitInput;
                title_str = ['Constellation: ' upper(typeStr) ',' 'Binary Mapping,'...
                    'PhaseOffset=' num2str(obj.PhaseOffset) 'rad']; 
                symMapping = 0:(M-1);                
            case {'comm.OQPSKDemodulator'}
                M = 4;
                typeStr = 'oqpsk';
                bitMode = obj.BitOutput;
                title_str = ['Constellation: ' upper(typeStr) ',' 'Binary Mapping,'...
                    'PhaseOffset=' num2str(obj.PhaseOffset) 'rad']; 
                symMapping = 0:(M-1);
            case {'comm.BPSKModulator', 'comm.BPSKDemodulator'}
                typeStr = 'bpsk';
                title_str = ['Constellation: ' upper(typeStr) ','...
                    'PhaseOffset=' num2str(obj.PhaseOffset) 'rad'];
                symMapping = 0:1;
                bitMode = 0;
            otherwise
        end
        
        % Creating a new figure and plotting constellation points
        hFig = figure('Tag','ViewConstellationPlot');
        hAxes = axes(hFig);
        plot(hAxes, real(Constellation),...
            imag(Constellation), 'rx','LineWidth',2,'MarkerSize',8);
        
        % Holding plot to plot the modified data type values if any
        hold on;
        
        set(get(hAxes,'Title'),'String',title_str);
        set(get(hAxes,'XLabel'),'String','In-phase Amplitude');
        set(get(hAxes,'YLabel'),'String','Quadrature Amplitude');
        
        xlim = double([-max(real(Constellation))-scaling...
            max(real(Constellation))+scaling]);
        ylim = double([-max(imag(Constellation))-scaling ...
            max(imag(Constellation))+scaling]);
        set(hAxes,'XLim', xlim, 'YLim', ylim);
        
        % Managing grid lines
        set(hAxes,'XGrid','on','YGrid','on');
        set(hAxes,'XColor',[0.25 0.25 0.25],'YColor',[0.25 0.25 0.25]);
        
        % Drawing solid lines for X,Y axes
        line(hAxes, xlim,zeros(1,2),'LineWidth',2,'Color',0*ones(1,3));
        line(hAxes, zeros(1,2),ylim,'LineWidth',2,'Color',0*ones(1,3));
        
        % Labeling symbols
        if isempty(symMapping)
            switch lower(obj.SymbolMapping)
                case 'binary'
                    symMapping = 0:(M-1);
                case 'gray'
                    [~, symMapping] = bin2gray((0:M-1),typeStr,M);
                case 'custom'
                    symMapping = obj.CustomSymbolMapping;
            end
        end
        
        for cnt = 1:length(symMapping)
            if bitMode
                sym_labels{cnt} = dec2base(symMapping(cnt),2,ceil(log2(M)));
            else
                sym_labels{cnt} = num2str(symMapping(cnt)); %#ok<*AGROW>
            end
            text(hAxes, real(Constellation(cnt)),...
                imag(Constellation(cnt)) + 0.2*scaling,...
                sym_labels{cnt}, 'Clipping', 'on');
        end

        hold off;
    end
end
end
