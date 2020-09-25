function [modulatedHeader] = ModulatePLHeader(header)
    I = zeros(1,90);
    Q = zeros(1,90);
    
    for i = 1:45
        I(2*i-1) = (1/sqrt(2)) * (1-2*header(2*i-1));
        Q(2*i-1) = I(2*i-1);
        
        I(2*i) = -(1/sqrt(2)) * (1-2*header(2*i));
        Q(2*i) = -I(2*i);
    end
    modulatedHeader = I + 1i*Q;
end

