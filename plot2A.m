function []=plot2A(RV,rDates,n,T,stockname)

RV_year = zeros(T, 1);
RV_year = 100*sqrt(RV(:,1)*252);

for d = 0:T-1
    dates( d+1,1)= rDates(n*d+1,1)
end

f = figure;
set(f,'units','normalized','outerposition',[0 0 1 1]);
plot(dates, RV_year, 'blue');
datetick('x','yyyy');
box off; grid on;
ylabel('Stock RV in percentage')
xlabel('Time');
title(strcat('Stock ',stockname, ' Annualized RV'));
print(f,'-dpng','-r200','figures/1B');
%close(f);