% y[n]=0.25（x[n-1]+x[n-2]+x[n-3]+x[n-4]）
%求单位阶跃响应 用conv函数
%需要先用impz()函数计算系统的单位脉冲响应
%再使用conv()函数将输入序列与系统单位进行卷积
h=[0 0.25*ones(1,4)];
x2=ones(1,21);
n=0:20;
y2=conv(h,x2);
%本题理论上得到的卷积长度是无限长的(因为单位阶跃序列是无限长)
%为了画图(研究)方便 单位阶跃序列只取了有限值
%于是在conv()卷积的过程中 会"补0"
%卷积结果就代码来说 长度是 20+21-1 = 40 (0~39)
%则在卷积计算过程中会补 19个0 ,但是理论上单位阶跃序列全是1 
%所以卷积结果后19位理论上应该是用输入序列的后19位
%即用1和系统单位脉冲响应进行卷积
%但实际上由于取有限位并补"0"的操作后
%导致后19位是在用0和系统单位脉冲响应进行卷积
%因此得到的卷积结果 应该抛弃后19位
%即只要前21位
y2conv=y2(1:21);            
stem(n,y2conv,'filled');   
title('y2conv');            
xlabel('n');                
ylabel('y[n]')  
set(gca,'YLim',[0 1.5]);%Y轴的数据显示范围
                           
                            
