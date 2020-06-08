% y[n]=0.25（x[n-1]+x[n-2]+x[n-3]+x[n-4]）
%求单位阶跃响应 filter函数 
% 这个函数一步到位 直接把x序列仿真到输出
%相当于 先进行计算该系统的单位脉冲响应,然后计算输入序列与
%单位脉冲响应的卷积
a2=1;
b2=[0 0.25*ones(1,4)];
n=0:20;
x2=ones(1,21);
y2filter=filter(b2,a2,x2);
stem(n,y2filter);
title('y2filter_step');
xlabel('x');
ylabel('y')
set(gca,'YLim',[0 1.5]);%Y轴的数据显示范围