function []=plot2C(RV,BV,rDates,n,T,stockname)

RV_year = zeros(T, 1);
RV_year = 100*sqrt(RV(:,1)*252);

BV_year = zeros(T, 1);
BV_year = 100*sqrt(BV(:,1)*252);

for d = 0:T-1
    dates( d+1,1)= rDates(n*d+1,1)
end

f = figure;
set(f,'units','normalized','outerposition',[0 0 1 1]);

a=plot(dates, RV_year, 'blue');
hold on
b=plot(dates, BV_year, 'red');

b.Color(4) = 0.3;

datetick('x','yyyy');
box off; grid on;
ylabel('Stock RV and BV in percentage')
xlabel('Time');
legend('RV_year','BV_year')
title(strcat('Stock ',stockname, ' RV and BV Comparison'));
%print(f,'-dpng','-r200','figures/1F');
%close(f);