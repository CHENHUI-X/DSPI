% 通带边界频率fc=800Hz，阻带边界fr=1000Hz，
% 通带波动  阻带最小衰减At=40dB，采样频率fs=4000Hz。
%先计算出通带和阻带的允许波动
fedge=[800 1000]; 
	mval=[1 0]; 
	dev=[0.0559 0.01];
       fs=4000; 
	[N,fpts,mag,wt]=remezord(fedge,mval,dev,fs); 
    %用remezord函数估算出remez函数要用到的阶n、归一化频带边缘矢量fpts、频带内幅值响应矢量mag及加权矢量w，b=remez(N,fpts,mag,wt); 
	[h,w]=freqz(b,1,256); %返回频率响应和数字频率
	plot(w*2000/pi,20*log10(abs(h))); %x轴转换为模拟频率
	grid; 
  xlabel('频率/Hz') ;
	 ylabel('幅度/dB');
