% y[n]+0.75y[n-1]+0.125y[n-2]=x[n]-x[n-1]
%单位阶跃响应 filter函数 
% 这个函数一步到位 直接把x序列仿真到输出
%相当于 先进行计算该系统的单位脉冲响应,然后计算输入序列与
%单位脉冲响应的卷积
a1=[1,0.75,0.125];
b1=[1,-1];
n=0:20;
x2=ones(1,21);
y1filter=filter(b1,a1,x2);
stem(n,y1filter);
title('y1filter_step');
xlabel('x');
ylabel('y');
