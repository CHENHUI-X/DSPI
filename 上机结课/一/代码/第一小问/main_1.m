function main_1()
h = Unit_pulse_1();%系统单位脉冲响应序列
x1 = xt();%输入序列
y1conv=conv(h,x1);%进行卷积
stem(y1conv,'filled')%绘制输入序列的波形
end