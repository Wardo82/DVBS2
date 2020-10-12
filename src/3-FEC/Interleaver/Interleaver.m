classdef Interleaver
   %Interleaver Interleaver using the specs of the DVBS2 system.
   % Methods for interleaving and deinterleaving are called "encode" and
   % "decode" to follow the BCH and LDPC object nomenclature.
   properties
       modulation_type % Modulation type
       rate % The coding rate
       rows % Number of rows of the matrix
       columns % Number of columns of the matrix
   end
   
   methods
       % === Constructor ===
       function obj = Interleaver(dvb)
           obj.modulation_type = dvb.ModulationType;
           obj.rate = dvb.LDPCCodeRate;
           % Set the number of rows
           if strcmp(dvb.LDPCtype, 'long') % For long codeword format
               switch dvb.ModulationType
                   case '8PSK'
                       obj.rows = 21600;
                   case '16APSK'
                       obj.rows = 16200;
                   case '32APSK'
                       obj.rows = 12960;
               end
           else % For short codeword format
               switch dvb.ModulationType
                   case '8PSK'
                       obj.rows = 5400;
                   case '16APSK'
                       obj.rows = 4050;
                   case '32APSK'
                       obj.rows = 3240;
               end
           end
           % Set the number of columns
           switch dvb.ModulationType
               case '8PSK'
                   obj.columns = 3;
               case '16APSK'
                   obj.columns = 4;
               case '32APSK'
                   obj.columns = 5;
           end
               
           if dvb.verbose
               disp("Creating Interleaver object:");
               disp(obj);
           end
       end
       
       function codeword = encode(obj, message)
           % Interleaves the message vector passed as argument and places
           % the result on the codeword vector as return value.
           codeword = zeros(size(message));
           if strcmp(obj.modulation_type, 'PSK') && ... 
               strcmp(obj.rate, '3/5') 
               for i = 1:obj.rows
                   codeword(3*(i-1)+1) = message(2*obj.rows+i);
                   codeword(3*(i-1)+2) = message(obj.rows+i);
                   codeword(3*(i-1)+3) = message(i);
               end
           else
               for i = 1:obj.rows
                   codeword(3*(i-1)+1) = message(i);
                   codeword(3*(i-1)+2) = message(obj.rows+i);
                   codeword(3*(i-1)+3) = message(2*obj.rows+i);
               end
           end

       end
   end
end