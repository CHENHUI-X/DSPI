function main_2()
% 系统差分方程y(n)=0.05x(n)+0.05x(n-1)+0.9y(n-1)
%用impz()函数计算系统的单位脉冲响应
%再使用conv()函数将输入序列与系统单位进行卷积
a1=[1,-0.9];% y[n]系数
b1=[0.05 0.50];%x[n]系数
[h] =impz(b1,a1,10);%得到10个长度的单位脉冲响应
x1 = ones(1,8);%R(8)
x2 = ones(1,8)%为研究方便,截取u(n)的一部分
y1 = conv(h,x1);%R(8)的输出响应
y2 = conv(h,x2);%u(n)的输出响应
y2 = y2(1:8)%但由于conv函数自动补0,导致后边的结果被舍去
figure
stem(y1,'filled');
title('R(8)的输出响应')
figure
stem(y2,'filled');
title('u(n)的输出响应')
end