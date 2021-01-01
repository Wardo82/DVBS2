% First frame with amplitude 1
frame = uint8(randi([0 1], 64800, 1));
[I, Q] = psk_modulate(frame, 3, 1);
constellation = I + 1i*Q;

scatterplot(constellation)

% Second frame with ampltiude 5
frame = uint8(randi([0 1], 64800, 1));
[I, Q] = psk_modulate(frame, 3, 5);
constellation = I + 1i*Q;

scatterplot(constellation)

constellation = step(psk_modulator, frame);
scatterplot(constellation)
