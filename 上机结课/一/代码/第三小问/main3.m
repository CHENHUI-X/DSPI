

%使用conv()函数将输入序列与系统单位进行卷积
a1=[1,-0.9];% y[n]系数
b1=[0.05 0.50];%x[n]系数
h1n = ones(1,10);
h2n = [1 2.5 2.5 1];
xn = ones(1,8);
y1n = conv(h1n,xn);
y2n = conv(h2n,xn);
figure
stem(y1n,'filled');
title('h1系统的输出响应')
figure
stem(y2n,'filled');
title('h2系统的输出响应')
