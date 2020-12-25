function [locator_polynom] = compute_error_locator(syndrome, t, m, field, alpha_powers)
% 
    % Initial conditions for the BM algorithm
    polynom_length = 2*t;
    syndrome = [syndrome; zeros(3, 1)];
    % Delta storing the powers of alpha in the corresponding place
    delta_rho     = uint32(zeros(polynom_length, 1)); delta_rho(1)=1;
    delta_next    = uint32(zeros(polynom_length, 1));
   
    % Premilimnary values
    n_max = uint32(2^m - 1);

    % Initialize step mu = 1
    delta_next(1) = 1; delta_next(2) = syndrome(1); % 1 + S1*X
    % The discrepancy is stored in polynomial representation as uint32 numbers
    value = gf_mul_elements(delta_next(2), syndrome(2), field, alpha_powers, n_max);
    discrepancy_next = bitxor(syndrome(3), value);
    % The degree of the locator polynomial
    locator_degree_rho  = 0;
    locator_degree_next = 1;
    
    % Update all values
    locator_polynom     = delta_next;
    delta_current       = delta_next;
    discrepancy_rho     = syndrome(1);
    discrepancy_current = discrepancy_next;
    locator_degree_current     = locator_degree_next;
    rho = 0; % The row with the maximum value of 2mu - l starts at 1
    
    for i = 1:t % Only the even steps are needed (so make t out of 2*t)
        if discrepancy_current ~= 0
            % Compute the correction factor 
            correction_factor = uint32(zeros(polynom_length, 1));
            x_exponent = 2*(i - rho);
            if (discrepancy_current == 1 || discrepancy_rho == 1)
                d_mu_times_rho = discrepancy_current * discrepancy_rho;
            else
                alpha_discrepancy_mu        = alpha_powers(discrepancy_current);
                alpha_discrepancy_rho       = alpha_powers(discrepancy_rho);
                alpha_inver_discrepancy_rho = n_max - alpha_discrepancy_rho;
                % The alpha power for dmu * drho^-1 is
                alpha_d_mu_times_rho  = alpha_discrepancy_mu + alpha_inver_discrepancy_rho;
                % Equivalent to aux mod(2^m - 1)
                alpha_d_mu_times_rho  = alpha_d_mu_times_rho - ...
                                  n_max * uint32(alpha_d_mu_times_rho > n_max);
                d_mu_times_rho = field(alpha_d_mu_times_rho);          
            end
            correction_factor(x_exponent+1) = d_mu_times_rho;
            correction_factor = gf_mul_polynoms(correction_factor,...
                                                delta_rho,...
                                                field, alpha_powers, n_max);
            % Finally we add the correction factor to get the new delta
            delta_next = bitxor(delta_current, correction_factor(1:polynom_length));
            
            % Update used data
            l = polynom_length;
            while delta_next(l) == 0 && l>0
                l = l - 1;
            end
            locator_degree_next = l-1;
            % Update previous maximum if the degree is higher than recorded
            if (2*i - locator_degree_current) > (2*rho - locator_degree_rho)
                locator_degree_rho  = locator_degree_current;
                delta_rho           = delta_current;
                discrepancy_rho     = discrepancy_current;
                rho = i;
            end
        else
            % If the discrepancy is 0, the locator polynomial for this step
            % is passed to the next one. It satifies all newtons' equations
            % until now.
            delta_next = delta_current; 
        end

        % Compute the discrepancy for the next step
        syndrome_start_index = 2 * i + 3;
        if(syndrome_start_index <= 2*t)
            discrepancy_next     = syndrome(syndrome_start_index); % First value
            for k = 1:locator_degree_next
                value = gf_mul_elements(delta_next(k + 1), ...
                                        syndrome(syndrome_start_index - k), ...
                                        field, alpha_powers, n_max);
                discrepancy_next = bitxor(discrepancy_next, value);
            end
        else
            discrepancy_next = 0;
        end
        
        % Update all values
        locator_polynom = delta_next;
        delta_current = delta_next;
        discrepancy_current = discrepancy_next;
        locator_degree_current = locator_degree_next;
    end
end

