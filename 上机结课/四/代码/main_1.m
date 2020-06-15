%三路调幅信号的载波频率分别问250hz 500hz 1000hz 带宽分别为50hz 100hz 200hz
Fs=10000;%采样频率
T=1/Fs;
st = mstg;
%低通滤波器
fp=300;fs=400;%通带和阻带边界
wp=2*fp/Fs;ws=2*fs/Fs;%数字指标
rp=0.1;rs=60;%通带最大衰减,阻带最小衰减
[N,wp]=ellipord(wp,ws,rp,rs);%调用ellipord 计算椭圆DF阶数N和通带截止频率p
[B,A]=ellip(N,rp,rs,wp);%调用ellip计算椭圆低通DF系统函数系数向量B和A 
y1 = filter(B,A,st);%滤波
[h,w] = freqz(B,A,1024);%返回滤波器的频率响应和频率坐标轴
m =abs(h);
figure
subplot(3,2,1)
plot(w*Fs/2/pi,20*(log10(m/max(m))));%绘制衰减图
axis([0 1200 -120 10])
set(gca,'XTick',[0:200:1200]);
set(gca,'YTick',[-120:30:10]);%设置坐标轴范围
xlabel('频率');ylabel('衰减幅度')
grid on;
subplot(3,2,2)
n = 0:length(y1)-1;
t = n*T;
plot(t,y1) 
xlabel('时间');title('低通滤波结果')
grid on;
%带通滤波器
fp1=400;fp2=600;%通带边界
fs1=300;fs2=700;%阻带边界
wp=[2*fp1/Fs,2*fp2/Fs];%数字指标
ws=[2*fs1/Fs,2*fs2/Fs];%数字指标
rp=0.1;rs=60;
[N,wp]=ellipord(wp,ws,rp,rs);%调用ellipord 计算椭圆DF阶数N和通带截止频率wp
[B,A]=ellip(N,rp,rs,wp);%调用ellip计算椭圆带通DF系统函数系数向量B和A 
y2=filter(B,A,st);%滤波
[h,w] = freqz(B,A,1024);%返回滤波器的频率响应和频率坐标轴
m =abs(h);
subplot(3,2,3)
plot(w*Fs/2/pi,20*(log10(m/max(m))));%绘制衰减图
axis([0 1200 -120 10])
set(gca,'XTick',[0:200:1200]);
set(gca,'YTick',[-120:30:10]);%设置坐标轴范围
xlabel('频率');ylabel('衰减幅度')
grid on;
subplot(3,2,4)
n = 0:length(y2)-1;
t = n*T;
plot(t,y2) 
xlabel('时间');title('带通滤波结果')
grid on;
%高通滤波器
fp=800;fs=600;%通带边界和阻带边界
wp=2*fp/Fs;ws=2*fs/Fs;
rp=0.1;rs=60;%通带最大衰减,阻带最小衰减
[N,wp]=ellipord(wp,ws,rp,rs);%调用ellipord 计算椭圆DF阶数N和通带截止频率p
[B,A]=ellip(N,rp,rs,wp,'high');%调用ellip计算椭圆高通DF系统函数系数向量B和A 
y3 = filter(B,A,st);%滤波
[h,w] = freqz(B,A,1024);%返回滤波器的频率响应和频率坐标轴
m =abs(h);
subplot(3,2,5)
plot(w*Fs/2/pi,20*(log10(m/max(m))));%绘制衰减图
axis([0 1200 -120 10])
set(gca,'XTick',[0:200:1200]);
set(gca,'YTick',[-120:30:10]);%设置坐标轴范围
xlabel('频率');ylabel('衰减幅度')
grid on;
subplot(3,2,6)
n = 0:length(y3)-1;
t = n*T;
plot(t,y3) 
xlabel('时间');title('高通滤波结果')
grid on;
