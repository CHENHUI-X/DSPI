function st=mstg()
%产生信号序列向量st，并显示st的时域波形和幅频曲线
%st=mstg 返回三路调幅信号相加形成的混合信号，长度N=800
N=800%N为信号st的长度
Fs=10000;T=1/Fs;Tp=N*T;%采样频率Fs=10kHz，Tp为采样时间
t=0:T:(N-1)*T;k=0:N-1;f=k/Tp;
fc1=Fs/10;     %第1路调幅信号的载波频率fcl=1000Hz 
fm1=fc1/10;    %第1路调幅信号的调制信号频率fml=100Hz 
fc2=Fs/20      %第2路调幅信号的载波频率fe2=500Hz 
fm2=fc2/10;    %第2路调幅信号的调制信号频率fm2=50Hz 
fc3=Fs/40;     %第3路调幅信号的载波频率fe3=250Hz 
fm3=fc3/10;    %第3路调幅信号的调制信号频率fm3=25Hz 
xt1=cos(2*pi*fm1*t).*cos(2*pi*fc1*t);   %产生第1路调幅信号
xt2=cos(2*pi*fm2*t).*cos(2*pi*fc2*t);   %产生第2路调幅信号
xt3=cos(2*pi*fm3*t).*cos(2*pi*fc3*t); %产生第3路调幅信号
st=xt1+xt2+xt3;%三路调幅信号相加
fxt=fft(st,N);%计算信号st的频谱
%====以下为绘图部分，绘制st的时域波形和幅频特性曲线======
subplot(2,1,1)
plot(t,st);grid;
xlabel('t/s');ylabel('s(t)');
axis([0,Tp/8,min(st),max(st)]);
title('(a) s(t)的波形')
subplot(2,1,2)
stem(f,abs(fxt)/max(abs(fxt)));grid;
title('(b) s(t)的频谱')
axis([0,Fs/5,0,1.2]);
xlabel('f/Hz');ylabel('幅度')
end
