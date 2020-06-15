xn = ones(1,4);
n = 0:7;
x2n = (n+1).*(0<= n&n <=3)+(8-n).*(4 <=n &n<=7);
x3n = (4-n).*(0<= n&n <=3)+(n-3).*(4 <=n &n<=7);
N1 = 8 ; N2 = 16;
k1 = 0:7;k2 = 0:15;
w1 = 2*k1/N1;
w2 = 2*k2/N2;
xk8 = fft(xn,N1);%xn的8点fft
x2k8 = fft(x2n,N1);%x2n的8点fft
x3k8 = fft(x3n,N1);%x3n的8点fft
xk16 = fft(xn,N2);%xn的16点fft
x2k16 = fft(x2n,N2);%x2n的16点fft
x3k16 = fft(x3n,N2);%x3n的16点fft
subplot(3,2,1)
stem(w1,abs(xk8))
xlabel('ω/π')
title('xn的8点fft')
subplot(3,2,2)
stem(w2,abs(xk16))
xlabel('ω/π')
title('xn的16点fft')

subplot(3,2,3)
stem(w1,abs(x2k8))
xlabel('ω/π')
title('x2n的8点fft')
subplot(3,2,4)
stem(w2,abs(x2k16))
xlabel('ω/π')
title('x2n的16点fft')

subplot(3,2,5)
stem(w1,abs(x3k8))
xlabel('ω/π')
title('x3n的8点fft')
subplot(3,2,6)
stem(w2,abs(x3k16))
xlabel('ω/π')
title('x3n的16点fft')
