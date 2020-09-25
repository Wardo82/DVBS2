function PLFRAME = PLFrameFwrd(XFECFRAME, dvb)
%PLFrameFwrd 
    efficiency_mod = log2(dvb.ModulationOrder);
    insertPilot = 1;
    % Get the number of symbols according to table 11 and MODCOD field of
    % the header according to table 12
    switch efficiency_mod
        case 2
            s = 360;
            switch dvb.LDPCCodeRate
                case '1/4'
                    MODCOD = 1;
                case '1/3'
                    MODCOD = 2;
                case '2/5'
                    MODCOD = 3;
                case '1/2'
                    MODCOD = 4;
                case '3/5'
                    MODCOD = 5;
                case '2/3'
                    MODCOD = 6;
                case '3/4'
                    MODCOD = 7;
                case '4/5'
                    MODCOD = 8;
                case '5/6'
                    MODCOD = 9;
                case '8/9'
                    MODCOD = 10;
                case '9/10'
                    MODCOD = 11;
            end
        case 3
            s = 240;
            switch dvb.LDPCCodeRate
                case '3/5'
                    MODCOD = 12;
                case '2/3'
                    MODCOD = 13;
                case '3/4'
                    MODCOD = 14;
                case '5/6'
                    MODCOD = 15;
                case '8/9'
                    MODCOD = 16;
                case '9/10'
                    MODCOD = 17;
            end
        case 4
            s = 180;
            switch dvb.LDPCCodeRate
                case '2/3'
                    MODCOD = 18;
                case '3/4'
                    MODCOD = 19;
                case '4/5'
                    MODCOD = 20;
                case '5/6'
                    MODCOD = 21;
                case '8/9'
                    MODCOD = 22;
                case '9/10'
                    MODCOD = 23;
            end
        case 5
            s = 144;
            switch dvb.LDPCCodeRate
                case '3/4'
                    MODCOD = 24;
                case '4/5'
                    MODCOD = 25;
                case '5/6'
                    MODCOD = 26;
                case '8/9'
                    MODCOD = 27;
                case '9/10'
                    MODCOD = 28;
            end
    end
    
    SLOTS = reshape(XFECFRAME, [], 90);
    
    SOF = [0 flip(de2bi(26029698))];
    MODCOD = [zeros(1,5 - size(de2bi(MODCOD),2)) de2bi(MODCOD)];
    TYPE = zeros(1,2);
    
    if strcmp(dvb.LDPCtype, 'long')
        TYPE(1) = 0;
    else
        TYPE(1) = 1;
    end
    
    if insertPilot == 1
        TYPE(2) = 1;
    else
        TYPE(2) = 0;
    end
    
    
    PLS = [MODCOD TYPE];
    PLS = EncodePls(PLS);
    PLHEADER = [SOF PLS];
    PLHEADER = ModulatePLHeader(PLHEADER);
    
    %Thorough investigations on real mass market demodulators show that
    %the following modes benefit in performance from pilot assistance
    %for carrier recovery: QPSK 1/4, 1/3 and 2/5, 8PSK rate 3/5, 2/3, 3?4
    %and 5/6, 16APSK rate 2/3, 3/4, 5/6 and 8/9, and all code rate for 32APSK.
    %(see DVBS2ImplementationGuide p.72)
    PILOT = (1/sqrt(2))*ones(1,36) + 1i*(1/sqrt(2))*ones(1,36);
    
    PLFRAME = {};
    PLFRAME{end+1} = PLHEADER;
    
    
    % For each slot of size 90
    for i = 1:s
        PLFRAME{end+1} = SLOTS(i, :);
        if((mod(i, 16) == 0) && i~=s) 
            PLFRAME{end+1} = PILOT;
        end 
    end
    PLFRAME = cell2mat(PLFRAME);
    
    %Scrambling
    PLFRAME = PLScrambler(PLFRAME).';
end
