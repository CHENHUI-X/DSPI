n = 0:159;
x4n = cos(pi/4*n);
x5n = cos(pi/4*n)+cos(pi/8*n);
N1 = 8; N2 = 16;
k1 = 0:7;k2 = 0:15;
w1 = 2*k1/N1;
w2 = 2*k2/N2;%归一化数字频率
x4k8 = fft(x4n,8);
x4k16 = fft(x4n,16);
x5k8 = fft(x5n,8);
x5k16 = fft(x5n,16);

subplot(2,2,1)
stem(w1,abs(x4k8))
title('x4n的8点fft')
xlabel('ω/π')
subplot(2,2,2)
stem(w2,abs(x4k16))
title('x4n的16点fft')
xlabel('ω/π')
subplot(2,2,3)
stem(w1,abs(x5k8))
title('x5n的8点fft')
xlabel('ω/π')
subplot(2,2,4)
stem(w2,abs(x5k16))
title('x5n的16点fft')
xlabel('ω/π')