% File: c5 FIRdesign.m
L = 30;
% 2L+1 total points
lam = 0.3;
% normalized cutoff frequency
m = -L:1:L;
% vector of points
bp = sin(pi*lam*(m+eps))./(pi*(m+eps)); % impulse response
stem(0:2*L,bp,'.')
% plot impulse response
xlabel('Sample index')
ylabel('Impulse response')
figure; a = 1; freqz(bp,a)
% plot amp and phase response
figure; subplot(2,1,1)
% new figure
[H w] = freqz(bp,a);
plot(w/pi,abs(H)); grid;
% unwindowed amp response
xlabel('Frequency (normalized to the Nyquist frequency = fs/2)')
ylabel('|H(f)| (unwindowed)')
subplot(2,1,2)
w = 0.54+0.46*cos(pi*m/L);
% Hamming window
wbp = bp.*w;
% apply window
[H w] = freqz(wbp,a);
plot(w/pi,abs(H)); grid;
% windowed amp response
xlabel('Frequency (normalized to the Nyquist frequency = fs/2)')
ylabel('|H(f)| (windowed)')
% End of script file.