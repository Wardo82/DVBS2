% First frame with amplitude 1
frame = uint8(randi([0 1], 64800, 1));
frame_reshape = reshape(frame, [length(frame)/3 3]);
constellation = zeros(length(frame)/3, 1);
for index = 1:height(frame_reshape)
    [I, Q] = psk_modulate(frame_reshape(index, :), 1);
    constellation(index) = I + 1i*Q;
end
% Second frame with ampltiude 5
frame = uint8(randi([0 1], 64800, 1));
frame_reshape = reshape(frame, [length(frame)/3 3]);
constellation = zeros(length(frame)/3, 1);
for index = 1:height(frame_reshape)
    [I, Q] = psk_modulate(frame_reshape(index, :), 5);
    constellation(index) = I + 1i*Q;
end

scatterplot(constellation)

modulator = psk_modulator();
constellation = zeros(length(frame)/3, 1);
[I, Q] = modulator.step(frame);
for index = 1:height(frame_reshape)
    constellation(index) = I(index) + 1i*Q(index);
end
scatterplot(constellation)
