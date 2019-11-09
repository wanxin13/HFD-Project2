function BV = getBV(r, n, T)
% getBV computes the bipower variation estimator for the integrated
%       variance of a day, day-by-day
%
% INPUT:
%  r: vector of doubles, returns
%  n: intenger, number of returns in a day
%  T: integer, number of days
%
% OUTPUT:
%   BV: vector of doubles, realized variance for each day
%

% Initialize output
BV = zeros(T, 1);

%Calculate RV
for d = 0: T-1
        for i = 2:n
        BV(d+1,1)= BV(d+1,1)+ abs(r(d*n+i,1))*abs(r(d*n+i-1,1));
        end
        BV(d+1,1)= 0.5*pi*BV(d+1,1);
        
end