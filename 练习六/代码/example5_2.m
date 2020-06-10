% 二、脉冲响应不变法（巴特沃兹原型）：
fs=10000;
ws1=0.3*pi*fs;ws2=0.8*pi*fs;
wp1=0.45*pi*fs;wp2=0.65*pi*fs;
ws=[ws1 ws2];wp=[wp1 wp2];
Rp=1;Rs=40;
[N,Wn]=buttord(wp,ws,Rp,Rs,'s');
[num,den]=butter(N,Wn,'s');
[B,A]=impinvar(num,den,10000); 
[h,w]=freqz(B,A);
f=w/pi*5000;
subplot(2,1,1);
plot(f,20*log10(abs(h))); 
axis([0,5000,-80,10]);
grid; xlabel('频率/Hz') ;ylabel('幅度/dB');
subplot(2,1,2);
plot(f,angle(h));
grid; xlabel('频率/Hz') ;ylabel('相位');
