% y[n]=0.25（x[n-1]+x[n-2]+x[n-3]+x[n-4]）
%单位冲击响应 用conv函数
%需要先用impz()函数计算系统的单位脉冲响应
%再使用conv()函数将输入序列与系统单位进行卷积
a2=1;
b2=[0 0.25*ones(1,4)];
x1=[1 zeros(1,5)];
[h]=impz(b2,a2,5);
y2conv=conv(h,x1);
n=0:9;
stem(n,y2conv,'filled')
set(gca,'YLim',[0 .5]);%Y轴的数据显示范围