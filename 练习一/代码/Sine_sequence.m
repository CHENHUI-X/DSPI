%正弦序列
clf;
n=1:30;
x=2*sin(pi*n/6+pi/3);
stem(n,x); xlabel ('时间序列n');ylabel('振幅');title('正弦函数序列x=2*sin(pi*n/6+pi/3)');
set(gca,'YLim',[-2.5 2.5]);%Y轴的数据显示范围