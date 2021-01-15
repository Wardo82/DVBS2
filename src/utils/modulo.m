function [y] = modulo(k, m)
    % Lets use the fact that a = q*b + r
    % We have that r = a - q*b
    % In this case k = q*m + y, we want y.
    q = uint32(k / m); % Find the quotient as integer
    aux = q.*m; % Get the numerator back.
    % If we passed it, matlab rounded upwards
    q(aux > k) = q(aux > k) - 1;
    % return the remainder
    y = k - q.*m; 
end