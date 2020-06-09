clear;
B=[0.3 -0.25 0.1];
A=1; n=0:9; 
X=[2*(n==0)-(n==2)];
Y=filter(A,B,X); stem(n,Y,'.');
title('滤波器输出采样值') 