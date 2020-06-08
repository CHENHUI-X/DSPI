% y[n]+0.75y[n-1]+0.125y[n-2]=x[n]-x[n-1]
%单位冲击响应 用conv函数
%需要先用impz()函数计算系统的单位脉冲响应
%再使用conv()函数将输入序列与系统单位进行卷积

a1=[1,0.75,0.125];% y[n]系数
b1=[1,-1];%x[n]系数

x1=[1 zeros(1,10)];%单位抽样序列
[h]=impz(b1,a1,10);%得到10个长度的单位脉冲响应
y1conv=conv(h,x1);%进行卷积
n=0:19;%卷积长度为:10+11-1共20个
stem(n,y1conv,'filled')
