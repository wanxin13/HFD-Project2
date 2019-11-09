function []=plot2B(BV,rDates,n,T,stockname)

BV_year = zeros(T, 1);
BV_year = 100*sqrt(BV(:,1)*252);

for d = 0:T-1
    dates( d+1,1)= rDates(n*d+1,1)
end

f = figure;
set(f,'units','normalized','outerposition',[0 0 1 1]);
plot(dates, BV_year, 'blue');
datetick('x','yyyy');
box off; grid on;
ylabel('Stock BV in percentage')
xlabel('Time');
title(strcat('Stock ',stockname, ' Annualized BV'));
print(f,'-dpng','-r200','figures/1B');
%close(f);