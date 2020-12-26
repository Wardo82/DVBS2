function [result] = gf_mul_polynoms(v1,v2, field, alpha_powers, n_max)
%
    y = zeros(length(v1)+length(v2)+1, 1);

    for i = 0:length(v1)-1
        a = v1(i+1);
        for j = 0:length(v2)-1
            b = v2(j+1);
            tmp = gf_mul_elements(a, b, field, alpha_powers, n_max);
            y(j+i+1) = bitxor(y(i+j+1), tmp); 
        end
    end
    result = uint32(y);
end

