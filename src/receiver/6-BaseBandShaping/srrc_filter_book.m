function h=srrc_filter_book(T,k,m,alpha)
% T - symbol time
% k - samples per symbol
% m - delay is mT
% alpha - roll-off factor
%
    n = 0:2*m*k; % Because of symetry we need twice the number of samples
    z = (n/k)-m+2.2204e-16;
    t1 = cos((1+alpha)*pi*z);
    t2 = sin((1-alpha)*pi*z);
    t3 = 1./(4*alpha*z);
    den = 1-16*alpha*alpha*z.*z;
    num = t1+t2.*t3;
    c = 4*alpha/(pi*sqrt(T));
    h = c*num./den;
end
