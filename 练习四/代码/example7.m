%先写出7项滑动平均系统函数
num=[1 1 1 1 1 1 1];
den=[7 0 0 0 0 0 0];
[z,p,k]=tf2zp(num,den); 
disp('零点');disp(z);
disp('极点');disp(p);
disp('增益系数');disp(k);
figure(1)
zplane(num,den)
figure(2)
freqz(num,den,128) 
