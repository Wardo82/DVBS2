function frame = descramble_and_unpad(random_frame)
% Pad and Scramble: Stream adaptation provides padding to complete a constant 
% length (Kbch bits) BBFRAME and scrambling. Kbch depends on the FEC rate,
% as reported in table 5. Padding may be applied in circumstances when the
% user data available for transmission are not sufficient to completely 
% fill a BBFRAME, or when an integer number of UPs has to be allocated in 
% a BBFRAME.
    Kbch = 48408;

    % Scramble using PRBS
    state_registers = [1 0 0 1 0 1 0 1 0 0 0 0 0 0 0];
    frame = zeros(size(random_frame));
    for tap = 1:Kbch % For each tap no the feedback shift registers
        % The output of the registers is the xor of the last two due to the
        % used polynomial (see standar). PRBS: 1 + x^14 x x^15
        registers_out = bitxor(state_registers(15), state_registers(14));
        % The output of the descrambler block
        frame(tap) = bitxor(random_frame(tap), registers_out);
        % Update registers by shifting their content one place to the right
        for r = length(state_registers):-1:2
            state_registers(r) = state_registers(r-1);
        end
        state_registers(1) = registers_out;
    end
    
    % Unpad zeros to the end of the received message
    % Assume there was no padding made at the receiver

end

