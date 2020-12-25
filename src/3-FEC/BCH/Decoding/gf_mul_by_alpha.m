function [output] = gf_mul_by_alpha(m, polynomial, feedback_conections)
   out = bitget(polynomial, m); % The last register
   out = out * (2^m - 1);
   mask = bitand(feedback_conections, out);
   next_values = bitshift(polynomial, 1);
   next_values = next_values - (2^m - 1) * (next_values > (2^m-1));
   polynomial = bitxor(next_values, mask);
   output = bitset(polynomial, 1, out);
end

