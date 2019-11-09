function []=plot3C(RVSIG, J_max)

RVSIG_year = 100*sqrt(RVSIG(:,1)*252);
J = [1/12:1/12:J_max/12]

f = figure;
set(f,'units','normalized','outerposition',[0 0 1 1]);
plot( J, RVSIG_year, 'r.');
%datetick('x','yyyy');
box off; grid on;
ylabel('Stock Annualized RV')
xlabel('Sampling Frequency in Minutes');
title(strcat('Stock TSLA Volatility Signature'));
print(f,'-dpng','-r200','figures/1B');
%close(f);