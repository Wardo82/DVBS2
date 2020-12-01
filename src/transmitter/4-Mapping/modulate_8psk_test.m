% First frame with amplitude 1
frame = uint8(randi([0 1], 64800, 1));
frame_reshape = reshape(frame, [length(frame)/3 3]);
constellation = zeros(length(frame)/3, 1);
for index = 1:height(frame_reshape)
    [I, Q] = modulate_8psk(frame_reshape(index, :), 1);
    constellation(index) = I + 1i*Q;
end
% Second frame with ampltiude 5
frame = uint8(randi([0 1], 64800, 1));
frame_reshape = reshape(frame, [length(frame)/3 3]);
constellation = zeros(length(frame)/3, 1);
for index = 1:height(frame_reshape)
    [I, Q] = modulate_8psk(frame_reshape(index, :), 5);
    constellation(index) = I + 1i*Q;
end

scatterplot(constellation)
