    num=[1 -0.1 -0.3 -0.3 -0.2];%零点
	den=[1 0.1 0.2 0.2 0.5];%极点zpk分别是零极点增益系数
	[z,p,k]=tf2zp(num,den);%求解系统零极点
	m=abs(p);
	disp('零点');disp(z);
	disp('极点');disp(p);
	disp('增益系数');disp(k);
	sos=zp2sos(z,p,k);%%zp2sos（z，p，K）完成将高阶系统分解为2阶系统的串联。
	disp('二阶节');disp(real(sos));
	zplane(num,den)%直接根据系统函数系数绘出有理分式形式的系统转移函数的零、极点分布图
    %等价于 下边这句话
    figure
    zplane(z,p)
