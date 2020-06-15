
%用impz()函数计算系统的单位脉冲响应
%使用conv()函数将输入序列与系统单位进行卷积
a1=[1 -1.8237 0.9801 ];% y[n]系数
b1=[1/100.49 0  -1/100.49];%x[n]系数
h = impz(b1,a1,1000);
xn = ones(1,1000);%u(n)
yn = conv(h,xn);    
figure
stem(yn(1:1000),'filled');
title('u(n)的输出响应')

