%Lotka-Volterra__competition

t=0:0.1:20;x0=[300,300];r1=0.8;r2=0.5;N1=4000;N2=1600;s1=0.5;s2=0.6;

% t：time frame
% x0：the initial number of cods and mature sea lampreys (25 and 2)
% r1：cods' growth rate during independent survival  
% r2：mature sea lamprey's growth rate during independent survival
% N1：cods' environmental capacity
% N2：mature sea lampreys' environmental capacity
% x(1)，(x(t))：cods' number
% x(2)，(y(t))：mature sea lampreys's number
% s1：for the resources that support cods, the consumption of a unit of mature sea lampreys (relative to N2) is a factor of g1 that of a unit of quantity cods (relative to N1).
% s2：for the resources that support mature sea lampreys, the consumption of a unit of cods (relative to N1) is a factor of g1 that of a unit of quantity mature sea lampreys (relative to N2).
y=@(t,x)[r1.*x(1).*(1-(x(1)./N1)-s1.*(x(2)./N2));r2.*x(2).*(1-(x(2)./N2)-s2.*(x(1)./N1))];
[t,x]=ode45(y,t,x0);

%y(t),x(t)
plot(t,x(:,1),'Linewidth',2,'Color','#FF8066');
hold on;
plot(t,x(:,2),'Linewidth',2,'Color','#3596B5');
grid; 
legend('cods','mature sea lampreys','FontName','Times New Roman','Linewidth', 2); 
xlabel('Time   /Week','FontName','Times New Roman','Linewidth', 2);
ylabel('Number   of   species','FontName','Times New Roman','Linewidth', 2);
legend('boxoff');
