% main.m
% This script when run should compute all values and make all plots
% required by the project.
% To do so, you must fill the functions in the functions/ folder,
% and create scripts in the scripts/ folder to make the required
% plots.

% Add folders to path
addpath('./functions/','./scripts/');

% Add plot defaults
plotDefaults;

%% Exercise1
% input values
%      N: integer, number of price samples in a day
%      T: integer, number of days in the sample
% N = 78
% T = 2769
% n = N-1
% P=0
% % Compute values
% [dates,X] = loadStockData('C:\Users\wc145\ECON672\Projects\Data\HD5min.csv',0)
% [rDates, r] = getReturns(dates, X, N, T)
% 
% % Make Plots
% 
% %plot1E(dates,X,r,rDates,' HD')
% 
% %% Exercise 2
% % Compute values
% RV = getRV(r, n, T)
% BV = getBV(r, n, T)
% 
% for t = 1:T
%     if RV(t,1)-BV(t,1)>0
%         C(t,1) = (RV(t,1)-BV(t,1))/RV(t,1);
%     else
%         C(t,1)=0;
%     end
%     P = P+C(t,1)
% end
% c = 100*P/T
% 
% % Make Plots
% %plot2A(RV,rDates,n,T,' HD')
% %plot2B(BV,rDates,n,T,' HD')
% plot2C(RV,BV,rDates,n,T,' VZ')
% %plot2D(C,n,T,rDates,' HD')
% % %% Exercise 3
N_high = 4621
T_high = 252
n_high = N_high-1
J_max = 120
% Compute Values
[dates_high,X_high] = loadStockData('C:\Users\wc145\ECON672\Projects\Data\TSLA-2016.csv',1)
RVSIG = getRVSignature(n_high,X_high,J_max)

% Make Plots
plot3C(RVSIG, J_max)