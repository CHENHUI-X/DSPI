% 首先由过渡带宽和阻带衰减  来决定凯塞窗的N和beta
%N = 30 beta = 4.55
%通带边界频率0.3pi，阻带边界频率0.5pi
%手动算出N和beta
wn=kaiser(30,4.55); %凯塞窗函数
nn=[0:1:29]; 
alfa=(30-1)/2; 
hd=sin(0.4*pi*(nn-alfa))./(pi*(nn-alfa)); %理想低通滤波器的时域序列
h=hd.*wn'; %利用凯塞窗截取
%得到截取后的时域序列
[h1,w1]=freqz(h); %返回系统频率响应和对应数字频率点,频率默认范围0-pi
%或者[h1,w1]=freqz(h,1);
%h1为频率响应
plot(w1/pi,20*log10(abs(h1)));%x周归一化,y轴换算成分贝
grid;	
xlabel('归一化频率/p') ;
ylabel('幅度/dB') ;
