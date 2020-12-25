function [y] = gf_mul_elements(a, b, field, alpha_powers, n_max)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    if a == 0 || b == 0
        y = 0;
    elseif a == 1 || b == 1
        y = a * b;  
    else
        power_a = alpha_powers(a);
        power_b = alpha_powers(b);
        index = modulo((power_a + power_b), n_max);
        if index == 0
            y = 1;
        else
            y = field(index);
        end
    end
    y = uint32(y);
end

