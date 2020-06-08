clf;
n=0:40;
x1=1.5*sin(2*pi*0.1*n);x2=sin(0.9*n);
subplot(1,2,1);
stem(n,x1); xlabel ('时间序列n');ylabel('振幅');title('正弦序列x1=1.5*sin(2*pi*0.1*n)');
set(gca,'YLim',[-2 2]);%Y轴的数据显示范围
subplot(1,2,2);
stem(n,x2); xlabel ('时间序列n');ylabel('振幅');title('正弦序列x2=sin(0.9*n)');
set(gca,'YLim',[-1.5 1.5]);%Y轴的数据显示范围