
fcuts = [0.3  0.5];
%归一化频率omega/pi 这里指通带截止频率、阻带起始频率
mags = [1 0];
% mags = [1 0]为由f指定的各个频带上的幅值向量，一般只有0和1表示
devs = [0.05 10^(-2.5)];
%用于指定各个频带输出滤波器的频率响应与其期望幅值之间的最大输出误差或偏差
[n,Wn,beta,ftype] = kaiserord(fcuts,mags,devs);  %计算出凯塞窗N，beta的值
%fir1函数可以使用kaiserord函数返回的阶数n、频率向量Wn、多频带幅度类型ftype和Kaiser窗口参数beta。
hh = fir1(n,Wn,ftype,kaiser(n+1,beta),'noscale');
% 窗函数的长度应等于FIR滤波器系数个数，即阶数n+1
% 调用firl或者reme函数时，用scale（缺省方式）对滤波器进行归一化，即滤波器通带中心频率处的响应幅值为0db。用noscale不对滤波器归一化。
freqz(hh);
