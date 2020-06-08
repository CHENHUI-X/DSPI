%手动实现类方波
T = 40;
x = 0.1:0.1:20;
y1 = ones(1,T);
y2 = -ones(1,T);
y = [y1 y2 y1 y2 y1];
plot(x,y)
set(gca,'YLim',[-1.5 1.5]);%Y轴的数据显示范围
xlabel('t')
title('手动实现方波')
