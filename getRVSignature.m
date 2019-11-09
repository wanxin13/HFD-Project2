function RVSIG = getRVSignature(n,X,J_max)
% getRVSIG computes the realized variance estimator for different frequency
%
% INPUT:
%  X: log prices 5 seconds
%  J_max: sampling frequency
%
% OUTPUT:
%  RVSIG: vector of doubles, realized variance for each day
%

% Initialize output
RVSIG = zeros(J_max, 1);

%Calculate RVSIG
for J = 1: J_max
    for i = 1:(n/J)
        RVSIG(J,1)= RVSIG(J,1)+ (X(i*J+1,1)-X((i-1)*J+1,1))^2;
    end
end
    