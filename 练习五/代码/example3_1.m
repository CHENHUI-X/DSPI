%带通滤波器
%wp1 = 0.45pi wp2=0.65pi 通带 通带起伏 ap <=1db
%ws1 = 0.3pi ws2=0.75pi 祖代 祖代起伏 as >=40
 [n,wn,bta,ftype]=kaiserord([0.3 0.45 0.65 0.8],[0 1 0],[0.01 0.1087 0.01]);%用kaiserord函数估计出滤波器阶数n和beta参数
%  f=[0.3 0.45 0.65 0.8]为对应数字频率
%  a=[0 1 0]为由f指定的各个频带上的幅值向量，
% devs=[0.01 0.1087 0.01]用于指定各个频带输出滤波器
% 的频率响应与其期望幅值之间的最大输出误差或偏差
 h1=fir1(n,wn,ftype,kaiser(n+1,bta),'noscale');
[hh1,w1]=freqz(h1,1,256);%返回频率响应和数字频率
 figure(1)
subplot(2,1,1)
 plot(w1/pi,20*log10(abs(hh1)))%数字频率归一化
 grid
xlabel('归一化频率w');ylabel('幅度/db');
subplot(2,1,2)
 plot(w1/pi,angle(hh1))
grid
xlabel('归一化频率w');ylabel('相位/rad');

 