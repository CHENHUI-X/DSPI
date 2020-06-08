% y[n]+0.75y[n-1]+0.125y[n-2]=x[n]-x[n-1]
%单位冲击响应 filter函数 
% 这个函数一步到位 直接把x序列仿真到输出
%相当于 先进行计算该系统的单位脉冲响应,然后计算输入序列与
%单位脉冲响应的卷积
a1=[1,0.75,0.125];% y[n]系数
b1=[1,-1];%x[n]系数
n=0:20;
x1=[1 zeros(1,20)];%单位抽样序列
y1filter=filter(b1,a1,x1);
stem(n,y1filter);
title('y1filter');
xlabel('x');
ylabel('y');
