n = 0:26;
xn = (n+1).*(n>=0&n<=13)+(27-n).*(n>=14&n<=26);%x(n)
xk =fft(xn,256)%用256点fft近似近似频率响应
xk1=fft(xn,32);%32点FFT
xk2 = fft(xn,16);%16点FFT
xn1 = ifft(xk1,32)%x32n
xn2 = ifft(xk1(1:2:27),16)%x16n
subplot(3,2,1)
plot(n,xn)%绘制x(n)
title('原始x(n)序列');
subplot(3,2,2)
k = 0:255;
plot(k,abs(xk))%默认x(k)
title('原始x(n)序列的频率响应');
subplot(3,2,3)
stem(0:31,xn1)%32点xn
title('频域进行32点采样恢复的x(n)序列');
subplot(3,2,4)
stem(0:31,abs(xk1))%32点fft
title('时域进行32点采样的x(n)频率响应');
subplot(3,2,5)
stem(0:15,xn2)%16点xn
title('频域进行16点采样恢复的x(n)序列');
subplot(3,2,6)
stem(0:15,abs(xk2))%16点fft
title('时域进行16点采样的x(n)频率响应');
