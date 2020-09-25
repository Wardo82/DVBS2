function chanOut = chan(modOut, snr)
    
    % create struct that defines parmeters. Change parameters HERE. 
    
    field1 = 'n_method';  value1 = {'Signal to noise ratio (Eb/No)'}; % 'Signal to noise ratio (Eb/No)', 'Signal to noise ratio (Es/No)', 'Signal to noise ratio (SNR)', or 'Variance'.
    field2 = 'ebno';  value2 = {30}; % Only applies if NoiseMethod is Signal to noise ratio (Eb/No).
    field3 = 'esno';  value3 = {30}; % Only applies if NoiseMethod is Signal to noise ratio (Es/No).
    field4 = 'snr';  value4 = {snr}; % Only applies if NoiseMethod is Signal to noise ratio (SNR).
    field5 = 'bps';  value5 = {1}; % Bits per symbol, pos integer, default 1.
    field6 = 'sigp';  value6 = {1}; % Signal power, pos integer in Watt, default 1.
    field7 = 'sps';  value7 = {1}; % Samples per symbol, pos integer, default 1. Only applies when NoiseMethod is Signal to noise ratio (Eb/No) or Signal to noise ratio (Es/No).
    field8 = 'vars';  value8 = {'Property'}; % 'Property' (default) | 'Input port'. Only applies when NoiseMethod is Variance.
    field9 = 'var';  value9 = {1}; % Default 1. Only applies when NoiseMethod is Variance and VarianceSource is Property.
    field10 = 'rands';  value10 = {'Global stream'}; %'Global stream' or 'mt19937ar with seed'. Only applies when NoiseMethod is 'Variance'.
    field11 = 'seed';  value11 = {67}; % Pos integer. Only applies when RandomStream is set to 'mt19937ar with seed'.

    field12 = 'p_off'; value12 = {0}; % Phase offset in degrees. Default 0.
    field13 = 'fos'; value13 = {'Property'}; % Source of frequency offset. 'Property'(default) or 'Input port'.
    field14 = 'f_off'; value14 = {0}; % Frequency offset in Hz. Default 0. (Calculated from Doppler Shift fd).
    field15 = 's_rate'; value15 = {1}; % Sample rate. Default 1.
    
    field16 = 'method'; value16 = {'Ghorbani model'}; % 'Cubic polynomial', 'Hyperbolic tangent', 'Saleh model', 'Ghorbani model', 'Rapp model', 'Lookup table'.
    field17 = 'in_sca'; value17 = {0}; % Input scaling in dB. Only applies if Method is Saleh model or Ghobani model. Default 0.
    field18 = 'lin_gain'; value18 = {0}; % Linear gain in dB. Only applies if Method is Cubic polynomial, Hyperbolic tangent, or Rapp model. Default 0.
    field19 = 'iip3'; value19 = {30}; % Third-order input intercept point. Only applies if Method is Cubic polynomial or Hyperbolic tangent. Default 30.
    field20 = 'AMPM'; value20 = {10}; % AM/PM conversion factor. Only applies if Method is Cubic polynomial or Hyperbolic tangent. Default 10.
    field21 = 'AMAM_p'; value21 = {[8.1081 1.5413 6.5202 -0.0718]}; % AM/AM conversion parameters. Only applies if Method is Saleh model (Default [2.1587 1.1517]) or Ghobani model (Default [8.1081 1.5413 6.5202 -0.0718]).
    field22 = 'AMPM_p'; value22 = {[4.6645 2.0965 10.88 -0.003]}; % AM/PM conversion parameters. Only applies if Method is Saleh model (Default [4.0033 9.1040]) or Ghobani model (Default [4.6645 2.0965 10.88 -0.003]).
    field23 = 'pll'; value23 = {10}; % Lower input power limit. Only applies if Method is Cubic polynomial or Hyperbolic tangent. Default 10.
    field24 = 'pul'; value24 = {inf}; % Upper input power limit. Only applies if Method is Cubic polynomial or Hyperbolic tangent. Default inf, pul > pll.
    field25 = 'out_sc'; value25 = {0}; % Scale factor applied to output signal. Only applies if Method is Saleh model or Ghobani model. Default 0.
    field26 = 'smooth'; value26 = {0.5}; % Smoothness factor. Only applies if Method is Rapp model. Default 0.5.
    field27 = 'osl'; value27 = {1}; % Output saturation level. Only applies if Method is Rapp model. Default 1.
    field28 = 'table'; value28 = {[-25, 5.16, -0.25; -20, 10.11, -0.47; -15, 15.11, -0.68; -10, 20.05, -0.89; -5, 24.79, -1.22; 0, 27.64, 5.59; 5, 28.49, 12.03]};
    % Amplifier characteristics lookup table. Default [-25, 5.16, -0.25; -20, 10.11, -0.47; -15, 15.11, -0.68; -10, 20.05, -0.89; -5, 24.79, -1.22; 0, 27.64, 5.59; 5, 28.49, 12.03].
    
    
    chan_param = struct(field1,value1,field2,value2,field3,value3,field4,value4,field5,value5, ...
                        field6,value6,field7,value7,field8,value8,field9,value9,field10,value10, ...
                        field11,value11,field12,value12,field13,value13,field14,value14,field15,value15, ...
                        field16,value16,field17,value17,field18,value18,field19,value19,field20,value20, ...
                        field21,value21,field22,value22,field23,value23,field24,value24,field25,value25, ...
                        field26,value26,field27,value27,field28,value28);

    awg = comm.AWGNChannel('NoiseMethod', chan_param.n_method , 'EbNo', chan_param.ebno,'EsNo', chan_param.esno, ...
                           'SNR', chan_param.snr, 'BitsPerSymbol', chan_param.bps, 'SignalPower', chan_param.sigp, ...
                           'SamplesPerSymbol', chan_param.sps, 'VarianceSource', chan_param.vars, 'Variance', chan_param.var, ...
                           'RandomStream', chan_param.rands, 'Seed', chan_param.seed); % define AWGN 
                       
    pfo = comm.PhaseFrequencyOffset('PhaseOffset', chan_param.p_off, 'FrequencyOffsetSource', chan_param.fos, ...
                                    'FrequencyOffset', chan_param.f_off, 'SampleRate', chan_param.s_rate); % define Doppler Shift
                                
    mnl = comm.MemorylessNonlinearity('Method', chan_param.method, 'InputScaling', chan_param.in_sca, 'LinearGain', chan_param.lin_gain, ...
                                      'IIP3', chan_param.iip3, 'AMPMConversion', chan_param.AMPM, 'AMAMParameters', chan_param.AMAM_p, ...
                                      'AMPMParameters', chan_param.AMPM_p, 'PowerLowerLimit', chan_param.pll, 'PowerUpperLimit', chan_param.pul, ...
                                      'OutputScaling', chan_param.out_sc, 'Smoothness', chan_param.smooth, 'OutputSaturationLevel', chan_param.osl, ...
                                      'Table', chan_param.table); % define Nonlinearity
    
    awgOut = awg(modOut); % pass through AWGN
    pfoOut = pfo(awgOut); % incorporate Doppler Shift
    chanOut = mnl(pfoOut); % incorporate Nonlinearity
    
end