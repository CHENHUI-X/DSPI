f=[0.3 0.45 0.65 0.8]
a=[0 1 0]
dev=[0.01 0.1087 0.01]
% 其含义同函数[n,wn,bta,ftype]=kaiserord（f，a，dev，fs）
% 中的参数相同。                                 
 [n,fpts,mag,wt]=remezord([0.3 0.45 0.65 0.8],[0 1 0],[0.01 0.1087 0.01]);
 %用remezord函数估算出remez函数要用到的阶n、归一化频带边缘矢量fpts、
%  频带内幅值响应矢量mag及加权矢量w，使remez函数设计出的滤波器满足f、a及dev指定的性能要求。
 h2=remez(n,fpts,mag,wt);%设计出等波纹滤波器
 [hh2,w2]=freqz(h2,1,256);%返回频率响应和数字频率
 figure(2)
 subplot(2,1,1)
 plot(w2/pi,20*log10(abs(hh2)))%数字频率归一化
 grid
 xlabel('归一化频率w');ylabel('幅度/db');
subplot(2,1,2)
 plot(w2/pi,angle(hh2))
 grid
 xlabel('归一化频率w');ylabel('相位/rad');
