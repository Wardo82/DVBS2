function [error_locations, errors] = compute_chien_search(n, locator_polynomial, field, alpha_powers, n_max)
       
    l = length(locator_polynomial);
    error_locations = zeros(l, 1);
    errors = 0;
    coefficient_buffer = locator_polynomial;
    alpha_degrees = uint32(1:l)';
    alpha_polynoms = field(alpha_degrees);
    alpha_polynoms = [1; alpha_polynoms];
    for i = 1:n_max % 
        % Compute locator polynomial at position i
        tmp = 0;
        for j = 2:l
            coefficient_buffer(j) = gf_mul_elements(coefficient_buffer(j), ...
                                                    alpha_polynoms(j), ...
                                                    field, alpha_powers, n_max);
             tmp = bitxor(tmp, coefficient_buffer(j));
        end
        % Signal the error
        if tmp == 1       
            errors = errors + 1;
            error_locations(errors) = n - (n_max - i);
        end
    end
end