    % y[n]=0.25（x[n-1]+x[n-2]+x[n-3]+x[n-4]）
    %单位冲击响应 filter函数 
    % 这个函数一步到位 直接把x序列仿真到输出
    %相当于 先进行计算该系统的单位脉冲响应,然后计算输入序列与
    %单位脉冲响应的卷积
    a2=1;
    b2=[0 0.25*ones(1,4)];
    n=0:9;
    x1=[1 zeros(1,9)];
    y2filter=filter(b2,a2,x1);
    stem(n,y2filter);
    title('y2filter');
    xlabel('x');
    ylabel('y')
    set(gca,'YLim',[0 .5]);%Y轴的数据显示范围
