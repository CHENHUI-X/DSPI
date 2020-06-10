wp1= 2*400*tan(2*pi*90/(2*400)); %通带截止频率
wp2= 2*400*tan(2*pi*110/(2*400));  %通带截止频率
ws1 = 2*400*tan(2*pi*60/(2*400));  %阻带截止频率
ws2 = 2*400*tan(2*pi*120/(2*400));  %阻带截止频率
[N,wn]=buttord([wp1 wp2],[ws1 ws2],3,10,'s'); %参数's'去除归一化频率限制
[B,A]=butter(N,wn,'s'); %默认产生带通滤波器,%参数's'去除归一化频率限制
[num,den]=bilinear(B,A,400); %双线性变换
[h,w]=freqz(num,den); 
 f=w/pi*200; %转换为模拟频率
plot(f,20*log10(abs(h))); 
axis([40,160,-30,10]); 
grid; 
xlabel('频率/kHz') 
ylabel('幅度/dB') 
