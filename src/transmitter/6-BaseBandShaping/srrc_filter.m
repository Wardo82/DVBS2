function [y] = srrc_filter(x, coefficients)
    l = length(x);
    num_regs = length(coefficients);
    extra_taps = int32(num_regs / 2);
    input = zeros(l+extra_taps, 1);
    input(1:l) = x;
    output = fi(zeros(l+extra_taps, 1),1, 18, 14);
    registers = fi(zeros(num_regs, 1), 1, 18, 14);
    for i = 1:l+extra_taps
        in = input(i);
        % One tap on the registers
        registers(2:num_regs) = registers(1:num_regs-1);
        registers(1) = in;
        % Multiply register content by coefficients of filter
        elements = registers .* coefficients;
        output(i) = sum(elements);
    end
    y = output(extra_taps+1: extra_taps+l);
end

