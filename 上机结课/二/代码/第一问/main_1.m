A = 444.128;
a=50*sqrt(2)*pi;
w0=50*sqrt(2)*pi;
Tp = 64/1000;%观测时间
T1 = 1/1000;
T2 = 1/300;
T3 = 1/200;
N1=0:Tp*1000-1;N2=0:Tp*300-1;N3=0:Tp*200-1;%序列x轴N1，N2，N3
x1=A*exp(-a*N1*T1).*sin(w0*N1*T1);%产生采样序列x1(n)
x2=A*exp(-a*N2*T2).*sin(w0*N2*T2);%产生采样序列x2（n）
x3=A*exp(-a*N3*T3).*sin(w0*N3*T3);%产生采样序列x3（n）
%采样频率不同,变换点数不同,N= fs*tp 
M1 = Tp*1000;%变换点数
M2 = Tp*300;
M3 = Tp*200;
y1=fft(x1,M1);%采样序列x1（n）的FFT变换
y2=fft(x2,M2);%采样序列x2（n）的FFT变换
y3=fft(x3,M3);%采样序列x3（n）的FFT变换
w1 = (0:M1-1)/Tp;
subplot(3,1,1)
stem(w1 ,abs(y1))%采样频率为1000Hz
xlabel('Hz')
ylabel('幅频响应')
title('采样频率为1000Hz')
subplot(3,1,2)
w2 = (0:M2-1)/Tp;
stem(w2,abs(y2))%采样频率为300Hz
xlabel('Hz')
ylabel('幅频响应')
title('采样频率为300Hz')
subplot(3,1,3)
w3 = (0:M3-1)/Tp;
stem(w3,abs(y3))%采样频率为200Hz
xlabel('Hz')
ylabel('幅频响应')
title('采样频率为200Hz')

