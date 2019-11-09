function []= plot2D(C,n,T,rDates,stockname)

for d = 0:T-1
    dates( d+1,1)= rDates(n*d+1,1)
end

f = figure;
set(f,'units','normalized','outerposition',[0 0 1 1]);
plot(dates, C*100, 'blue');
datetick('x','yyyy');
box off; grid on;
ylabel('percentage of RV accounted by jump variation')
xlabel('Time');
title(strcat('Stock ',stockname, ' Relative Contribution of Jumps'));
%print(f,'-dpng','-r200','figures/1B');
%close(f);