num=[0.0528 0.0797 0.1295 0.1295 0.797 0.0528];
den=[1 -1.8107 2.4947 -1.8801 0.9537 -0.2336];
[z,p,k]=tf2zp(num,den); %zpk分别为零极点增益系数
disp('零点');disp(z);
disp('极点');disp(p);
disp('增益系数');disp(k);
figure(1)
zplane(num,den)%直接根据系统函数系数绘制零极点
%等价这句话 zplane(z,p)
legend('零点','极点')
figure(2)
freqz(num,den,128)
