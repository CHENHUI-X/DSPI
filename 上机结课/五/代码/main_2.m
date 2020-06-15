xt=xtg();%产生加性噪声信号
N = 1000;Fs = 1000;
fcuts = [0.24  0.3];
%归一化频率omega/pi 这里指通带截止频率、阻带起始频率
mags = [1 0];
% mags = [1 0]为由f指定的各个频带上的幅值向量，一般只有0和1表示
devs = [0.01 10^(-2.5)];
%用于指定各个频带输出滤波器的频率响应与其期望幅值之间的最大输出误差或偏差
 [n,fpts,mag,wt]=remezord(fcuts,mags,devs);%估算参数
 h2=remez(n,fpts,mag,wt);
[hh2,w2]=freqz(h2,1,1024);%系统频率响应
figure
subplot(3,1,1)
plot(w2*Fs/2/pi,abs(hh2))%%观察等波纹滤波器的频率响应
xlabel('f/Hz');title('等波纹滤波器的频率响应');
subplot(3,1,2)
plot(w2*Fs/2/pi,20*log10(abs(hh2)))%%绘制衰减图
xlabel('f/Hz');title('等波纹滤波器衰减特性');
subplot(3,1,3)
yt=fftfilt(h2,xt);  %调用函数fftfilt对xt滤波
T = 1/Fs;
t=0:T:(N-1)*T;
plot(t,yt)%%观察滤波结果
xlabel('t/s');title('运用等波纹滤波器滤波结果');