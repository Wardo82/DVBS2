function [c] = compute_error_locator_v2(syndrome, m, field, alpha_powers)
% 
    % Initial conditions for the BM algorithm
    % Premilimnary values
    N = length(syndrome);
    n_max = uint32(2^m - 1);
    polynom_length = N/2 + 1;
    L = 0; % The curent length of the LFSR
    % The current connection polynomial
    c = uint32(zeros(polynom_length, 1)); c(1) = 1;
    % The connection polynomial before last length change
    p = uint32(zeros(polynom_length, 1)); p(1) = 1;
    l = 1; % l is k - m, the amount of shift in update
    dm = 1; % The previous discrepancy
    for k = 1:2:N % For k = 1 to N in steps of 2
        % ========= Compute discrepancy ==========
        d = syndrome(k);
        for i = 1:L
            aux = gf_mul_elements(c(i+1), syndrome(k-i), field, alpha_powers, n_max);
            d   = bitxor(d, aux);
        end
        
        if d == 0 % No change in polynomial
            l = l + 1;
        else
            % ======== Update c ========
            t = c;
            % Compute the correction factor 
            correction_factor = uint32(zeros(polynom_length, 1));
            % This is d *  dm^-1
            dd_sum = modulo(alpha_powers(d) + n_max - alpha_powers(dm), n_max);
            for i = 0:polynom_length - 1
                if p(i+1) ~= 0
                    % Here we compute d*d^-1*p(x_i)
                    ddp_sum = modulo(dd_sum + alpha_powers(p(i+1)), n_max);
                    if ddp_sum == 0
                        correction_factor(i + l + 1) = 1;
                    else
                        correction_factor(i + l + 1) = field(ddp_sum);
                    end
                end
            end
            % Finally we add the correction factor to get the new locator
            c = bitxor(c, correction_factor);
            
            if (2*L >= k) % No length change in update
                l = l + 1;
            else
                p   = t;
                L   = k - L;
                dm  = d;
                l = 1;
            end
        end
        l = l + 1;
    end
end
