num=[5];
den=[1 -1 0.09]; 
subplot(2,1,1)
%前40个点的冲激响应
impz(num,den,40);
[h,t]=impz(num,den,40); 
title('脉冲响应')
step=ones(1,100);
subplot(2,1,2)
y=conv(h,step);
n=0:138;
stem(n,y,'filled')
title('阶跃响应')
