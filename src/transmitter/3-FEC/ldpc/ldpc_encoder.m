classdef ldpc_encoder < matlab.System
    % ldpc encoder LDPC encoder class used to create a simulink block
    % that encodes an input message using the DVBS2 system guidelines.
    
    % Public, tunable properties
    properties

    end

    % Public, non-tunable properties
    properties(Nontunable)
        n = 64800;
        K  = 48600;
        first_parity_bit_addresses = {[0 6385 7901 14611 13389 11200 3252 5243 2504 2722 821 7374];
                                [1 11359 2698 357 13824 12772 7244 6752 15310 852 2001 11417];
                                [2 7862 7977 6321 13612 12197 14449 15137 13860 1708 6399 13444];
                                [3 1560 11804 6975 13292 3646 3812 8772 7306 5795 14327 7866];
                               [4 7626 11407 14599 9689 1628 2113 10809 9283 1230 15241 4870];
                               [5 1610 5699 15876 9446 12515 1400 6303 5411 14181 13925 7358];
                               [6 4059 8836 3405 7853 7992 15336 5970 10368 10278 9675 4651];
                               [7 4441 3963 9153 2109 12683 7459 12030 12221 629 15212 406];
                               [8 6007 8411 5771 3497 543 14202 875 9186 6235 13908 3563];
                               [9 3232 6625 4795 546 9781 2071 7312 3399 7250 4932 12652];
                               [10 8820 10088 11090 7069 6585 13134 10158 7183 488 7455 9238];
                               [11 1903 10818 119 215 7558 11046 10615 11545 14784 7961 15619];
                               [12 3655 8736 4917 15874 5129 2134 15944 14768 7150 2692 1469];
                               [13 8316 3820 505 8923 6757 806 7957 4216 15589 13244 2622];
                               [14 14463 4852 15733 3041 11193 12860 13673 8152 6551 15108 8758];
                               [15 3149 11981];
                               [16 13416 6906];
                               [17 13098 13352];
                               [18 2009 14460];
                               [19 7207 4314];
                               [20 3312 3945];
                               [21 4418 6248];
                               [22 2669 13975];
                               [23 7571 9023];
                               [24 14172 2967];
                               [25 7271 7138];
                               [26 6135 13670];
                               [27 7490 14559];
                               [28 8657 2466];
                               [29 8599 12834];
                               [30 3470 3152];
                               [31 13917 4365];
                               [32 6024 13730];
                               [33 10973 14182];
                               [34 2464 13167];
                               [35 5281 15049];
                               [36 1103 1849];
                               [37 2058 1069];
                               [38 9654 6095];
                               [39 14311 7667];
                               [40 15617 8146];
                               [41 4588 11218];
                               [42 13660 6243];
                               [43 8578 7874];
                               [44 11741 2686]};
        second_parity_bit_addresses = [[0 1022 1264];
                                       [1 12604 9965];
                                       [2 8217 2707];
                                       [3 3156 11793];
                                       [4 354 1514];
                                       [5 6978 14058];
                                       [6 7922 16079];
                                       [7 15087 12138];
                                       [8 5053 6470];
                                       [9 12687 14932];
                                       [10 15458 1763];
                                       [11 8121 1721];
                                       [12 12431 549];
                                       [13 4129 7091];
                                       [14 1426 8415];
                                       [15 9783 7604];
                                       [16 6295 11329];
                                       [17 1409 12061];
                                       [18 8065 9087];
                                       [19 2918 8438];
                                       [20 1293 14115];
                                       [21 3922 13851];
                                       [22 3851 4000];
                                       [23 5865 1768];
                                       [24 2655 14957];
                                       [25 5565 6332];
                                       [26 4303 12631];
                                       [27 11653 12236];
                                       [28 16025 7632];
                                       [29 4655 14128];
                                       [30 9584 13123];
                                       [31 13987 9597];
                                       [32 15409 12110];
                                       [33 8754 15490];
                                       [34 7416 15325];
                                       [35 2909 15549];
                                       [36 2995 8257];
                                       [37 9406 4791];
                                       [38 11111 4854];
                                       [39 2812 8521];
                                       [40 8476 14717];
                                       [41 7820 15360];
                                       [42 1179 7939];
                                       [43 2357 8678];
                                       [44 7703 6216]];
        third_parity_bit_addresses =   [[0 3477 7067];
                                       [1 3931 13845];
                                       [2 7675 12899];
                                       [3 1754 8187];
                                       [4 7785 1400];
                                       [5 9213 5891];
                                       [6 2494 7703];
                                       [7 2576 7902];
                                       [8 4821 15682];
                                       [9 10426 11935];
                                       [10 1810 904];
                                       [11 11332 9264];
                                       [12 11312 3570];
                                       [13 14916 2650];
                                       [14 7679 7842];
                                       [15 6089 13084];
                                       [16 3938 2751];
                                       [17 8509 4648];
                                       [18 12204 8917];
                                       [19 5749 12443];
                                       [20 12613 4431];
                                       [21 1344 4014];
                                       [22 8488 13850];
                                       [23 1730 14896];
                                       [24 14942 7126];
                                       [25 14983 8863];
                                       [26 6578 8564];
                                       [27 4947 396];
                                       [28 297 12805];
                                       [29 13878 6692];
                                       [30 11857 11186];
                                       [31 14395 11493];
                                       [32 16145 12251];
                                       [33 13462 7428];
                                       [34 14526 13119];
                                       [35 2535 11243];
                                       [36 6465 12690];
                                       [37 6872 9334];
                                       [38 15371 14023];
                                       [39 8101 10187];
                                       [40 11963 4848];
                                       [41 15125 6119];
                                       [42 8051 14465];
                                       [43 11139 5167];
                                       [44 2883 14521]];
    end

    properties(DiscreteState)

    end

    % Pre-computed constants
    properties(Access = private)
        q = 45; % Taken from table 7.a
        num_parity_bits
        parity
    end
    
    methods
        % Constructor
        function obj = ldpc_encoder(varargin)
            % Support name-value pair arguments when constructing object
            setProperties(obj,nargin,varargin{:})
        end
    end

    methods(Access = protected)
        %% Common functions
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
        end

        function ldpc_codeword = stepImpl(obj,bch_codeword)
            % Implement algorithm. 
            ldpc_codeword = (zeros(obj.n, 1));
            % 1.- Initialize p0 = p1 = p2 = ... = p_(nldpc−kldpc−1) = 0.
            obj.parity = (zeros(obj.n-obj.K, 1));

            % Iterate over all chunks of 360 information bits
            for j = 0:44 % j will be each row
                parityAddrs = obj.first_parity_bit_addresses{j+1, :}';
                % Iterate over all 360 information bits of a given chunk
                for i = 0:359
                    m = (j)*360+i;
                    adrr = mod(parityAddrs+i*obj.q, obj.n-obj.K);
                    obj.parity(adrr+1) = xor(obj.parity(adrr+1), bch_codeword(m+1));
                end
            end
            for j = 0:44
                parityAddrs = obj.second_parity_bit_addresses(j + 1, :)';
                % Iterate over all 360 information bits of a given chunk
                for i = 0:359
                    m = (45+j)*360+i;
                    adrr = modulo(uint32(parityAddrs)+modulo(m, 360)*obj.q, obj.n-obj.K);
                    obj.parity(adrr+1) = xor(obj.parity(adrr+1), bch_codeword(m+1));
                end
            end
            for j = 0:44
                parityAddrs = obj.third_parity_bit_addresses(j + 1, :)';
                % Iterate over all 360 information bits of a given chunk
                for i = 0:359
                    m = (90+j)*360+i;
                    adrr = modulo(uint32(parityAddrs)+modulo(m, 360)*obj.q, obj.n-obj.K);
                    obj.parity(adrr+1) = xor(obj.parity(adrr+1), bch_codeword(m+1));
                end
            end
            
            % After all of the information bits are exhausted, the final 
            % parity bits are obtained as follows:
            % • Sequentially perform the following operations starting with i = 1.
            %       pi = pi xor pi−1, i = 1,2,...,nldpc−kldpc−1
            for i = 2:obj.n-obj.K
                obj.parity(i) = xor(obj.parity(i), obj.parity(i-1));
            end

            % • Final content of pi , i = 0,1,..,nldpc−kldpc−1 is equal to 
            % the parity bit pi.
            ldpc_codeword(1:obj.K) = bch_codeword;
            ldpc_codeword(obj.K+1:obj.n) = obj.parity;
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties
        end

        %% Backup/restore functions
        function s = saveObjectImpl(obj)
            % Set properties in structure s to values in object obj

            % Set public properties and states
            s = saveObjectImpl@matlab.System(obj);

            % Set private and protected properties
            %s.myproperty = obj.myproperty;
        end

        function loadObjectImpl(obj,s,wasLocked)
            % Set properties in object obj to values in structure s

            % Set private and protected properties
            % obj.myproperty = s.myproperty; 

            % Set public properties and states
            loadObjectImpl@matlab.System(obj,s,wasLocked);
        end

        %% Simulink functions
        function ds = getDiscreteStateImpl(obj)
            % Return structure of properties with DiscreteState attribute
            ds = struct([]);
        end

        function flag = isInputSizeMutableImpl(obj,index)
            % Return false if input size cannot change
            % between calls to the System object
            flag = false;
        end

        function out = getOutputSizeImpl(obj)
            % Return size for each output port
            out = obj.n;
        end

        function out = getOutputDataTypeImpl(obj)
            % Inherit data type from first input port
            out = propagatedInputDataType(obj,1);
        end

    end

    methods(Static, Access = protected)
        %% Simulink customization functions
        function header = getHeaderImpl
            % Define header panel for System block dialog
            header = matlab.system.display.Header(mfilename("class"));
        end

        function group = getPropertyGroupsImpl
            % Define property section(s) for System block dialog
            group = matlab.system.display.Section(mfilename("class"));
        end
    end
end
