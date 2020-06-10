% 一、	双线性变换法（巴特沃兹原型）：
fs = 10000;
ws1=2*10000*tan(0.3*pi/2);
ws2=2*10000*tan(0.8*pi/2);
wp1=2*10000*tan(0.45*pi/2);
wp2=2*10000*tan(0.65*pi/2);
ws=[ws1 ws2];wp=[wp1 wp2];
Rp=1;Rs=40;
[N,Wn]=buttord(wp,ws,Rp,Rs,'s');%参数's'去除归一化频率限制
[num,den]=butter(N,Wn,'s');%参数's'去除归一化频率限制
[B,A]=bilinear(num,den,10000); %双线性变换
[h,w]=freqz(B,A);%返回频率响应和数字频率
f=w/pi*5000;%转换为模拟频率
subplot (2,1,1);
plot(f,20*log10(abs(h))); 
axis([0,5000,-60,10]);
grid; xlabel('频率/Hz') ;ylabel('幅度/dB');
subplot(2,1,2);
plot(f,angle(h));
grid; xlabel('频率/Hz') ;ylabel('相位');
