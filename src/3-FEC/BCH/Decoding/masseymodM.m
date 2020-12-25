function [c] = masseymodM(y,M)
%
% Return the shortest (GF(M)) LFSR consistent with the data sequence y
%
% function [c] = massey(y)
%
% y = input sequence 
%
% c = LFSR connections, c = 1 + c(2)D + c(3)D^2 + ... c(L+1)D^L
%     (Note: opposite from usual Matlab order)

% Copyright 2004 by Todd K. Moon
% Permission is granted to use this program/data
% for educational/research only

N = length(y);
% Initialize the variables
L = 0;      % current length of LFSR
Lm = 0;      % length before last change
c = 1;       % feedback connections
p = 1;       % c before last change
l = 1;       % amount of shift

for k=1:N    % N = current matching output sequence length
  d = mod(c*y(k:-1:k-L)',M);     % compute the discrepancy (binary arith.)
  if(d == 0)                      % no discrepancy
    l = l+1;
  else
    if(2*L >= k)                % no length change in update
      c = mod(c + [zeros(1,l) p zeros(1,L-(Lm+l))],M);
      l = l+1;
    else                          % update with new length
      t = c;
      c = mod([c zeros(1,Lm+l-L)] + [zeros(1,l) p],M);
      Lm = L; 
      L = k - L;  
      p = t;   
      l = 1;
    end
  end
end