%Lotka-Volterra__parasitism

t=0:0.1:20;x0=[25,2];k1=1;k2=0.5;b=0.1;c=0.02,e=0.4;  
% t：time frame
% x0：the initial number of flounders and mature sea lampreys (25 and 2)
% k1：flounders' growth rate during independent survival  
% k2：mature sea lamprey's death rate during independent survival
% b：mature sea lamprey's ability to prey on zooplankton
% c：flounders' ability to support sea lampreys
% x(1)，(x(t))：flounders' number
% x(2)，(y(t))：mature sea lampreys's number
% e: artificial fishing rate

y=@(t,x)[x(1).*(k1-e-b*x(2));x(2).*(-(k2+e)+c*x(1))]; 
[t,x]=ode45(y,t,x0);

%y(t),x(t)
plot(t,x(:,1),'Linewidth',2,'Color','#FF8066');
hold on;
plot(t,x(:,2),'Linewidth',2,'Color','#3596B5');
grid; 
legend('flounders','mature sea lampreys','FontName','Times New Roman','Linewidth', 2); 
xlabel('Time   /Week','FontName','Times New Roman','Linewidth', 2);
ylabel('Number   of   species   /(×10^2)','FontName','Times New Roman','Linewidth', 2);
legend('boxoff');

%y(x)
figure
plot(x(:,1),x(:,2),'Linewidth',2,'Color','#8695FF'),grid
xlabel('Number   of   flounders   /(×10^2)','FontName','Times New Roman','Linewidth', 2);  
ylabel('Number   of   sea   lampreys   /(×10^2)','FontName','Times New Roman','Linewidth', 2);  
