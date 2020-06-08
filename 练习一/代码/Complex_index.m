%复指数序列
clf;
n=1:30;
x=2*exp(j*3*n);
plt1 = subplot(3,1,1)
stem(plt1,n,x); xlabel ('时间序列n');ylabel('振幅');title('复指数序列x=2*exp(j*3*n) (默认函数)');
set(gca,'YLim',[-2.5 2.5]);%Y轴的数据显示范围
plt2 = subplot(3,1,2)
stem(plt2,n,real(x)); xlabel ('时间序列n');ylabel('实部');title('复指数序列x=2*exp(j*3*n)的实部 (real()函数)');
set(gca,'YLim',[-2.5 2.5]);%Y轴的数据显示范围
plt3 = subplot(3,1,3)
stem(plt3,n,imag(x)); xlabel ('时间序列n');ylabel('虚部');title('复指数序列x=2*exp(j*3*n)的虚部 (imag()函数)');
set(gca,'YLim',[-2.5 2.5]);%Y轴的数据显示范围