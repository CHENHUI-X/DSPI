k=256;
	num=[0.8 -0.44 0.36 0.02];%分子系数 (x系数)
	den=[1 0.7 -0.45 -0.6];%分母系数 (y系数)
	w=0:pi/k:pi;
	h=freqz(num,den,w);%求解系统函数的频率响应
    %freqz(num,den,w) 直接输入这句话会显示幅度相应和相位响应
subplot(2,2,1);
	plot(w/pi,real(h));grid
	title('实部')
	xlabel('\omega/\pi');ylabel('幅度')
	subplot(2,2,2);
	plot(w/pi,imag(h));grid
	title('虚部')
	xlabel('\omega/\pi');ylabel('Amplitude')
	subplot(2,2,3);
	plot(w/pi,abs(h));grid
	title('幅度谱')
	xlabel('\omega/\pi');ylabel('幅值')
	subplot(2,2,4);
	plot(w/pi,angle(h));grid
	title('相位谱')
		xlabel('\omega/\pi');ylabel('弧度') 
