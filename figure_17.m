%Lotka-Volterra__competition

t=0:0.1:20;x0=[300,300];N1=4000;N2=1600;s1=0.5;s2=0.6;MAX=[];MIN=[];
%r2=[0.76 0.98 1.2 1.42 1.64 1.86 2.08 2.3 2.52];
r2=0.98;
r1=[0.7,1.0,1.3,1.6,1.9,2.2,2.5,2.8,3.1]; % r5 in article

% t：time frame
% x0：the initial number of cods and mature sea lampreys (300 and 300)
% r1：cods' growth rate during independent survival  
% r2：mature sea lamprey's growth rate during independent survival
% N1：cods' environmental capacity
% N2：mature sea lampreys' environmental capacity
% x(1)，(x(t))：cods' number
% x(2)，(y(t))：mature sea lampreys's number
% s1：for the resources that support cods, the consumption of a unit of mature sea lampreys (relative to N2) is a factor of g1 that of a unit of quantity cods (relative to N1).
% s2：for the resources that support mature sea lampreys, the consumption of a unit of cods (relative to N1) is a factor of g1 that of a unit of quantity mature sea lampreys (relative to N2).

for i=1:9;
y=@(t,x)[r1(i).*x(1).*(1-(x(1)./N1)-s1.*(x(2)./N2));r2.*x(2).*(1-(x(2)./N2)-s2.*(x(1)./N1))];
[t,x]=ode45(y,t,x0);

MIN(1,i)=min(x(:,1));MIN(2,i)=min(x(:,2));
MAX(1,i)=max(x(:,1));MAX(2,i)=max(x(:,2));

subplot(3,3,i);
area(t,x(:,1),'LineWidth',2,'FaceColor','#FFC75F','EdgeColor','#FFC75F','FaceAlpha',0.3,'EdgeAlpha',1);
hold on;
area(t,x(:,2),'LineWidth',2,'FaceColor','#9F9FD5','EdgeColor','#9F9FD5','FaceAlpha',0.3,'EdgeAlpha',1);
grid; 
legend('flounders','sea lampreys','FontName','Times New Roman','Linewidth', 2); 
xlabel('Time   /Week','FontName','Times New Roman','Linewidth', 2);
ylabel('Number   of   species   /(×10^3)','FontName','Times New Roman','Linewidth', 2);

if i==1
    title('r_5=0.7','FontName','Times New Roman','Linewidth', 2);
else if i==2
        title('r_5=1.0','FontName','Times New Roman','Linewidth', 2);
    else if i==3
            title('r_5=1.3','FontName','Times New Roman','Linewidth', 2);
        else if i==4
                title('r_5=1.6','FontName','Times New Roman','Linewidth', 2);
                else if i==5
                        title('r_5=1.9','FontName','Times New Roman','Linewidth', 2);
                        else if i==6
                                title('r_5=2.2','FontName','Times New Roman','Linewidth', 2);
                                else if i==7
                                        title('r_5=2.5','FontName','Times New Roman','Linewidth', 2);
                                        else if i==8
                                                title('r_5=2.8','FontName','Times New Roman','Linewidth', 2);
                                                else if i==9
                                                        title('r_5=3.1','FontName','Times New Roman','Linewidth', 2);
                                                    end
                                            end
                                    end
                            end
                    end
            end
        end
    end
end
                                                                                                   
legend('boxoff');
end;