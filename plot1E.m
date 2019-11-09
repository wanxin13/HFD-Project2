% plot1B.m
function []=plot1E(dates,X,r,rDates,stockname)

p=exp(X);

f = figure;
set(f,'units','normalized','outerposition',[0 0 1 1]);
plot(dates, p, 'black');
datetick('x','yyyy');
box off; grid on;
ylabel('Stock price in dollars')
xlabel('Time');
title(strcat('Stock ',stockname, ' Prices'));
%print(f,'-dpng','-r200','figures/1B');
close(f);


f = figure;
set(f,'units','normalized','outerposition',[0 0 1 1]);

gr = 100*r(:,1)

plot(rDates, gr, 'blue');
datetick('x','yyyy');
box off; grid on;
ylabel('geometric returns')
xlabel('Time');
title(strcat('Stock ',stockname, ' Geometric returns'));
print(f,'-dpng','-r200','figures/1B');
%close(f);