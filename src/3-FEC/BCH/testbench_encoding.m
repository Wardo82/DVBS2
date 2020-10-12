%% Script to test BCH class
dvb.LDPCCodeRate = '1/4';
dvb.LDPCtype = 'long';

% Create both objects. Own implementation and MATLAB comm's library
bch = BCH(dvb);

% Create BCH encoder from the comm library
mat_bch_encoder = comm.BCHEncoder('CodewordLength', bch.n, ...
                        'MessageLength', bch.k, ...
                        'PrimitivePolynomialSource', 'Property', ...
                        'PrimitivePolynomial', bch.primitive, ...
                        'GeneratorPolynomialSource', 'Property', ...
                        'GeneratorPolynomial', bch.generator, ...
                        'CheckGeneratorPolynomial', true);
                    
%% Payload
% Payload
%img = imread('iu.png'); % Image to be transmitted
%msg = de2bi(img)'; % Matrix of size [8 k] (with k=16008) representing the image in binary form 
% Payload
message = ones(bch.k, 1);

%% Encode frame using BCH object  
bchOut = bch.encode(message')';

%% Encode frame using MATLAB's comm object
bchEncOut = mat_bch_encoder(message); 

if isequal(bchOut, bchEncOut)
    disp("Encoding succesfull: Matlab's and BCH class output are equal.");
end