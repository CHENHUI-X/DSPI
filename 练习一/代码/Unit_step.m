%单位阶跃序列
clf;
n=0:10;
u=[ones(1,11)];
stem(n,u);xlabel ('时间序列n');ylabel('振幅');title('单位阶越序列');
set(gca,'YLim',[0 2]);%Y轴的数据显示范围