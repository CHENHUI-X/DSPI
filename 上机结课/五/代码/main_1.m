xt=xtg();%产生加性噪声信号
N = 1000;Fs = 1000;
fcuts = [0.24  0.3];
%归一化频率omega/pi 这里指通带截止频率、阻带起始频率
mags = [1 0];
% mags = [1 0]为由f指定的各个频带上的幅值向量，一般只有0和1表示
devs = [0.01 10^(-2.5)];
%用于指定各个频带输出滤波器的频率响应与其期望幅值之间的最大输出误差或偏差
[n,Wn,beta,ftype] = kaiserord(fcuts,mags,devs);  %计算出凯塞窗N，beta的值
hh= fir1(n,Wn,ftype,kaiser(n+1,beta),'noscale');%设计凯塞窗
[hh1,w1]=freqz(hh,1,1024);%系统频率响应
figure
subplot(3,1,1)
plot(w1*Fs/2/pi,abs(hh1))%%观察窗函数的频率响应
xlabel('f/Hz');title('窗函数的频率响应');
subplot(3,1,2)
plot(w1*Fs/2/pi,20*log10(abs(hh1)))%%绘制衰减图
xlabel('f/Hz');title('窗函数衰减特性');
subplot(3,1,3)
yt=fftfilt(hh,xt);  %调用函数fftfilt对xt滤波
T = 1/Fs;
t=0:T:(N-1)*T;
plot(t,yt)%%观察滤波结果
xlabel('f/Hz');title('运用窗函数滤波结果');