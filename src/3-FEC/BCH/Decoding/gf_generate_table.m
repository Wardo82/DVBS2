function [polynomials] = gf_generate_table(m, primitive_polynomial)
% Generates the galois field table of 2^m powers of alpha
% by successively multiplying the primitive polynomial by alpha.
%  As explained in Lin, Costello. Error Control Coding. Second Edition.
%  page 218. The primitive polynomial correspons to a shift register
%  circuit for multiplying elements in GF(2^m)

   feedback_conections = uint32(bitand(primitive_polynomial, 2^m - 1));
   % First, we load (alpha^0=1) into the register.
   state_registers = uint32(1);
   % Successive shift of the register will generate vector representations
   % of successive powers of alpha.
   polynomials = uint32(zeros(2^m - 1, 1)); % Column vector stores
   polynomials(1) = state_registers; % Add the first element
   for i = 2:2^m % For each pulse
       state_registers = gf_mul_by_alpha(m, state_registers, feedback_conections);
       polynomials(i) = state_registers;
   end
end

