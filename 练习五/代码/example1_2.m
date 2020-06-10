%通带边界频率0.3pi，阻带边界频率0.5pi
% b=fir1(N,Wn,’ftype’,taper)
%N代表滤波器阶数；Wn代表滤波器的截止频率(归一化频率:Omega/pi)
%当设计带通和带阻滤波器时，Wn为双元素相量；
% ftype代表滤波器类型，如’high’高通，’stop’带阻等；
% taper为窗函数类型，默认为海明窗，
% 窗系数需要实现用窗函数blackman, hamming,hanning chebwin, kaiser产生。
% 窗函数的长度应等于FIR滤波器系数个数，即阶数n+1
b = fir1(29,0.4,kaiser(30,4.55));
% 调用firl或者reme函数时，用scale（缺省方式）
% 对滤波器进行归一化，即滤波器通带中心频率处的响应幅值为0db
% 用noscale不对滤波器归一化。
    [h1,w1]=freqz(b,1); %求解该系统函数的频率响应以及对应数字频率点
	plot(w1/pi,20*log10(abs(h1))); %归一化频率
	axis([0,1,-80,10]); 
	grid;	
	xlabel('归一化频率/p') ;
	ylabel('幅度/dB') ;
