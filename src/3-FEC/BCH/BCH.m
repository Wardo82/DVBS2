classdef BCH
    %BCH BCH encoder using the specs of the DVBS2 system
    
    properties
        dvb % Struct containing necessary properties
        generator % The generator polynomial for t-error correcting BCH code
        primitive % The primitive poynomial for code
        k % Message length
        n % Codeword length
        t % Error correcting capability
        field % GF(m) extension field used for decoding
    end
    
    methods
        % === Constructor ===
        function obj = BCH(dvb)
            % BCH Construct an instance of this class with all parameters in
            %dvb. 
            % The generator and primitive polynomials will be calculated as
            % well as setting the size of the message to be encoded.
            % @param dvb: dvb object with all properties necessary for the
            %   encoder
            obj.dvb = dvb;
            
            R = dvb.LDPCCodeRate;
            type = dvb.LDPCtype;

            if strcmp(type, 'long')
                m = 16; % Extension degree
                % Table 5.a
                table = [1/4 16008 16200 12 64800 
                           1/3 21408 21600 12 64800 
                           2/5 25728 25920 12 64800
                           1/2 32208 32400 12 64800
                           3/5 38688 38880 12 64800
                           2/3 43040 43200 10 64800
                           3/4 48408 48600 12 64800
                           4/5 51648 51840 12 64800
                           5/6 53840 54000 10 64800
                           8/9  57472 57600 8 64800
                           9/10 58192 58320 8 64800];
            else 
                % Table 5.b
                 table = [1/4 3072 3240 12 16200
                            1/3 5232 5400 12 16200
                            2/5 6312 6480 12 16200
                            1/2 7032 7200 12 16200
                            3/5 9552 9720 12 16200
                            2/3 10632 10800 12 16200
                            3/4 11712 11880 12 16200
                            4/5 12432 12600 12 16200
                            5/6 13152 13320 12 16200
                            8/9 14232 14400 12 16200];
            end

            rowidx = find(abs(table(:,1)-str2num(R))<.001);
            obj.k = table(rowidx,2);
            obj.n = table(rowidx,3);
            obj.t = table(rowidx,4);
    
            % Two different setups depending on the length of the choosen 
            % LDPC codeword length.
            if strcmp(dvb.LDPCtype, 'long')
                % Precomputed polynomials for t number of errors
                a8 = [1  0  0  0  1  1  1  0  0  0  0  0  0  0  1 ...
                    1  1  0  0  1  0  0  1  0  1  0  1  0  1  1 ...
                    1  1  1  0  1  1  1  0  0  0  1  0  0  1  0 ...
                    0  1  1  1  1  0  0  1  0  1  1  1  1  0  1 ...
                    1  1  1  0  1  0  0  0  1  1  0  0  1  1  1 ...
                    1  1  1  1  0  0  0  1  1  0  1  1  0  1  0 ...
                    1  1  1  0  1  0  1  0  0  0  0  0  1  0  0 ...
                    1  1  1  1  1  0  0  1  0  1  1  0  0  1  1 ...
                    0  0  0  1  0  1  0  1  1];

                a10 = [1  0  1  1  0  0  0  0  0  0  0  0  1  0  1 ...
                    0  1  0  0  0  0  1  1  0  0  1  1  1  0  1 ...
                    1  0  1  1  1  1  1  1  1  0  0  0  0  1  0 ...
                    1  0  1  0  0  0  1  1  0  0  1  1  0  0  0 ...
                    1  1  1  1  1  0  1  1  0  1  0  1  0  0  1 ...
                    1  1  1  0  0  0  0  1  0  1  0  1  1  1  0 ...
                    0  0  0  0  0  1  1  1  1  1  0  1  1  1  1 ...
                    1  1  0  1  0  0  0  1  0  0  1  0  0  0  1 ...
                    1  0  0  0  0  0  0  0  1  1  0  1  1  1  0 ...
                    0  0  1  0  1  1  1  0  1  1  0  1  1  0  0 ...
                    1  0  1  1  0  0  1  0  0  0  1];

                a12 = [1  0  1  0  0  1  1  1  0  0  0  1  0  0  1 ...
                    1  0  0  0  0  0  1  1  1  0  1  0  0  0  0 ...
                    0  1  1  1  0  0  0  0  1  0  0  0  1  0  1 ...
                    1  1  0  0  0  1  0  1  0  0  0  1  0  0  0 ...
                    1  1  1  0  0  0  1  0  1  0  0  0  0  1  1 ...
                    0  0  1  1  1  1  0  0  1  0  1  1  0  0  1 ...
                    1  0  1  1  0  0  0  1  1  0  1  1  1  0  0 ...
                    0  0  1  1  0  1  0  1  0  0  0  0  1  0  0 ...
                    0  1  0  0  0  1  0  0  1  0  0  0  0  0  0 ...
                    1  1  0  1  0  0  0  1  1  1  1  0  0  0  0 ...
                    1  0  1  1  1  1  1  0  1  1  1  0  1  1  0 ...
                    0  1  1  0  0  0  0  0  0  0  1  0  0  1  0 ...
                    1  0  1  0  1  1  1  1  0  0  1  1  1];
                
                % Set the generator polynomial
                switch obj.t
                case 8
                    obj.generator = a8;
                case 10
                    obj.generator = a10;
                case 12
                    obj.generator = a12;
                end
               
            else % For the short encoding version
                m = 14; % Extension degree
                
                % === Table of polynomials for the short version ===
                syms D
                g1 = sym2poly(1 + D + D^3 + D^5 + D^14);
                g2 = sym2poly(1 + D^6 + D^8 + D^11 + D^14);
                g3 = sym2poly(1 + D + D^2 + D^6 + D^9 + D^10 + D^14);
                g4 = sym2poly(1 + D^4 + D^7 + D^8 + D^10 + D^12 + D^14);
                g5 = sym2poly(1 + D^2 + D^4 + D^6 + D^8 + D^9 + D^11 + D^13 + D^14);
                g6 = sym2poly(1 + D^3 + D^7 + D^8 + D^9 + D^13 + D^14);
                g7 = sym2poly(1 + D^2 + D^5 + D^6 + D^7 + D^10 + D^11 + D^13 + D^14);
                g8 = sym2poly(1 + D^5 + D^8 + D^9 + D^10 + D^11 + D^14);
                g9 = sym2poly(1 + D + D^2 + D^3 + D^9 + D^10 + D^14);
                g10 = sym2poly(1 + D^3 + D^6 + D^9 + D^11 + D^12 + D^14);
                g11 = sym2poly(1 + D^4 + D^11 + D^12 + D^14);
                g12 = sym2poly(1 + D + D^2 + D^3 + D^5 + D^6 + D^7 + D^8 + D^10 + D^13 + D^14);
                pols = [g1; g2; g3; g4; g5; g6;...
                        g7; g8; g9; g10; g11; g12];

                % Multiply (convolve) the t first polynomials to get the generator
                tmp = pols(1, :);
                for i = 2:tBCH
                    tmp = gfconv(tmp, pols(i, :));
                end
                obj.generator = tmp;
            end % ====== End if ======
            
            % Calculate the primitive polynomial
            obj.primitive = de2bi(primpoly(m,'min'), 'left-msb');
            
            % Generate field over GF(m) for decoding
            obj.generateField(m);
        end
        
        function codeword = encode(obj, message)
            %encode Encode the message using the generator polynomial and
            %returns the resulting codeword
            % As per the ETSI estandar documentation:
            % 1.- Multiply the message polynomial m(x) by x^(n−k) .
            syms D
            x = sym2poly(D^(obj.n-obj.k)); 
            msg = gf(message, 2);
            m = gf(x, 2);
            tmp = conv(msg, m);
            % 2.- Divide x^(n−k)m(x) by g(x), the generator polynomial. Let 
            % d(x) be the remainder.
            gen = gf(obj.generator, 2);
            [~, d] = deconv(tmp, gen);
            % Set the codeword polynomial c(x) = x^(n−k)m(x) + d(x).
            codeword = double(xor(tmp.x, d.x));
        end
        
        function message = decode(obj, codeword)
            %decode Decode the codeword using a MB algorithm and
            %returns the resulting message
            p = 2; % Prime number as base of the GF 
            m = 16; % Extension degree
            num_elem = p^m-1; % Number of elements
            pad = 2^16-length(codeword);
            R = [zeros([1 pad]) codeword];
            % 1. Compute the syndrome
            % The first step in decoding BCH codes is computing the syndrome polynomial
            % using the received codeword R and the powers of alpha
            % The syndrome polynomial will be as S(x) = S1 + S2 + ... + S2t*x^(2t-1)
            % where each coeffitient will be stored in decimal representation of the
            % polynomial of its power of alpha (e.g. alpha4 = 3) 
            S = zeros(1, 2*obj.t);
            % TODO: This can be optimized by the fact that S2j = Sj^2
            for j = 1:2*obj.t
                s = zeros(1, 16);
                % Sum Ri*alpha^(ij) over all n
                for i = 0:num_elem-1
                    exp = mod((i)*j, num_elem); % We power each alpha to the jth power as coeffitiens for S(x)
                    s = xor(s, R(i+1)*obj.field(exp+2, :)); % We sum over all elements to get Sj
                end
                [~, tmp] = ismember(s, obj.field,'rows'); % For simplycity we store it in decimal representation
                S(j) = tmp-2;
            end
            
            % 2. Euclid's algorithm
            % The second step is to compute euclid's algorithm in order to find the
            % evaluator and the error locator polynomials
            a = repmat(-Inf, 1, 2*obj.t+1); a(2*obj.t+1) = 0;
            [v, ~] = euclid(a, S, obj.t, obj.t-1, obj.field);

            error_locator = gfdeconv(v, v(1), obj.field);
            errLocDegree = length(error_locator);
            % evaluator = gfdeconv(r, v(1), obj.field);
             
            % 3. Find the error position and the corrected codeword
            roots = {};
            for i = 1:length(obj.field) % For each power of alpha in the field
                % Compute the error_locator for alpha^-i
                x = zeros(1, errLocDegree); % Vector of x values. Each element is in exponential form
                for j = 2:errLocDegree 
                    x(j) = -i*(j-1); % x becomes the exponent of x^k = alpha^-i*k
                end

                y = mod(error_locator + x, num_elem) ; % We sum the exponents for each element to get a row vector of powers of alpha

                % In order to see if j is a root, we xor the polynomial representation of the elements in y
                root = zeros(1, length(obj.field(1, :)));
                for j = 1:length(y)
                    root = xor(root, obj.field(y(j)+2, :));
                end
                % If root is 0, that means that an error has been found
                if(~any(root))
                    roots{end+1} = i;
                end
            end

            % Now we proceed to correct the received codeword R
            E = zeros(1, length(R));
            E(cell2mat(roots)+1) = 1;

            C = xor(R, E);
            
            message = C(pad+1:pad+obj.k);
            
            clear tmp exp s a v r i k x  y j root;
        end
        
        % === Create field matrix ===
        function obj = generateField(obj, m)
            % === Generate field over GF(m) for decoding ===
            p = 2; % Prime number as base of the GF 
            num_elem = p^m-1; % Number of elements
            prim = fliplr(obj.primitive); % Primitive polynomial in ascending order

            % Initialize the first m powers of alpha
            galois_field = zeros(num_elem+1, m); % The field GF(p^m) as column vector
            for i = 2:m+1 % The first m-1 powers of alpha are just alpha^i
                galois_field(i, i-1) = 1;
            end
            % Initialize alpha to the power of m using the primitive polynomial
            alphaLeader = zeros(1, m+1); alphaLeader(m+1) = 1;
            aux = xor(alphaLeader, prim);
            galois_field(m+2, :) = aux(1:m);

            % Compute the rest of the powers of alpha
            for i = m+3:num_elem+1
                tmp = gfconv(galois_field(3, :), galois_field(i-1,:), 2); % Multiplication of alpha and alpha^i
                if length(tmp) <= m % Pad with zeros when necessary
                    tmp = padarray(tmp, [0 m-length(tmp)], 'post');
                else
                    tmp = xor(tmp, prim); % If the multiplication returns a power of m, we xor it with the primitive polynomial to keep it on the field
                    tmp = tmp(1:m); % After xor, keep only the first m bits.
                end
                galois_field(i, :) = tmp;
            end
            
            obj.field = galois_field;
            
            clear aux tmp i;
        end
    end
end