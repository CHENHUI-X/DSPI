%square方波
t=-2*pi:0.001:2*pi;
x=square(t);
plot(t,x);
xlabel('t'),ylabel(' x=square(t)');
set(gca,'YLim',[-1.5 1.5]);%Y轴的数据显示范围