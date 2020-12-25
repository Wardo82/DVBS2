function verify_error_locator(locator, error_vector, t, field, alpha_powers, n_max)
    error_positions = uint32(find(error_vector == 1)); % Zero indexed error positions
    locator_roots   = n_max - error_positions; % The inverses of the positions are roots
    for e = 1:length(locator_roots) % For each error position
        % Evaluate the locator polynomial at alpha^(locator_root)
        sum = locator(1); % Locator_0 = 1
        for v = 1:t
            exponent = modulo(v * locator_roots(e), n_max);
            if exponent == 0
                elem = locator(v+1);
            else
                elem = gf_mul_elements(locator(v+1), field(exponent), field, alpha_powers, n_max);
            end
            sum = bitxor(sum, elem);
        end
        if sum ~= 0
            error("Error in position: "+e+":="+error_positions(e));
        end
    end
%     result = zeros(t, 1);
%     for i = 1:t
%         for j = 0:t-1
%             element = gf_mul_elements(syndrome(t+i-j), locator(j+1), field, alpha_powers, n_max);
%             result(i) = bitxor(result(i), element);
%         end
%     end
%     success = sum(result);
end