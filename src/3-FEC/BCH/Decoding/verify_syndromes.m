function verify_syndromes(syndrome, error_vector, t, field, n_max)
    error_positions = uint32(find(error_vector == 1) - 1); % Zero indexed error positions
    % For a t error correcting code
    for i = 1:2*t
        % For all bits in the error vector
        sum = 0;
        for p = 1:length(error_positions)
            alpha_exp = modulo(error_positions(p)*i, n_max);
            polynom = field(alpha_exp+1);
            sum = bitxor(sum, polynom);
        end
        if sum ~= syndrome(i)
            error("Error in syndrome "+i);
        end
    end
end

