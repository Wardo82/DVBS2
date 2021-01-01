clear all;
M = 8;
l = 21600;
PLFRAME = randi([0 M-1], l, 1);

txfilter = comm.RaisedCosineTransmitFilter('Shape', 'Square Root',...
                            'FilterSpanInSymbols', 10,...
                            'OutputSamplesPerSymbol', 8, ...
                            'RolloffFactor', 0.3); 
load('srrc_tran_coeffs.mat') 
load('srrc_recv_coeffs.mat')

% Modulate signal using 8-PSK
txSig = pskmod(PLFRAME,M,0);

i_tx_interpol = repmat(real(txSig), 1, 8); % Upsampling
i_tx_interpol = reshape(i_tx_interpol', [], 1);
i_tx_filtered = srrc_filter(i_tx_interpol, srrc_trans_coeffs');
q_tx_interpol = repmat(imag(txSig), 1, 8); % Upsampling
q_tx_interpol = reshape(q_tx_interpol', [], 1);
q_tx_filtered = srrc_filter(q_tx_interpol, srrc_trans_coeffs');
tx_filtered   = i_tx_filtered + q_tx_filtered*1i;
stem(i_tx_interpol(1:100))
hold on
plot(i_tx_filtered(1:100))

% Gaussian noise
rxSig          = awgn(tx_filtered,10);

index         = 1:8:8*l; % Indexes used to decimate
i_rx_filtered = srrc_filter(real(rxSig), srrc_recv_coeffs');
i_rx_decimate = i_rx_filtered(index); % Downsample
q_rx_filtered = srrc_filter(imag(rxSig), srrc_recv_coeffs');
q_rx_decimate = q_rx_filtered(index); % Downsample
rx_filtered   = i_rx_decimate + q_rx_decimate*1i;
scatterplot(rx_filtered);      