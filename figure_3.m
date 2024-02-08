 % sex ratio-food curve

p0 =0.22; % the minimum value of sex ratio
r=0.0061; % the rate of change in sex ratio
pm=0.44;  % the maximum value of sex ratio
f0=1000*4.5*0.01; % the minimum value of food,unit:gram
f=f0:0.1:1500; % foodline
p=pm./(1+((pm/p0)-1)*exp((-r)*(f-f0)));

plot(f,p,'Linewidth',2,'Color','#FFC75F');
%area(f,p,'Linewidth',2,'FaceColor','#008BC5','EdgeColor','#008BC5','FaceAlpha',0.3,'EdgeAlpha',1);
xlabel('$Food \quad /gram$','Interpreter',"latex",'Linewidth', 2)
ylabel('$Sex \quad ratio$','Interpreter',"latex",'Linewidth', 2)
%title('$Sex \quad ratio-Food \quad Curve$','Interpreter',"latex",'Linewidth', 2)

hold on 
plot(f,1-p,'Linewidth',2,'Color','#008B74');
%area(f,1-p,'Linewidth',2,'FaceColor','#008B74','EdgeColor','#008B74','FaceAlpha',0.3,'EdgeAlpha',1);
yline(0.22,'--','Linewidth',0.8,'Color','#FF8066');
yline(0.33,'--','Linewidth',0.8,'Color','#B0A8B9');
yline(0.44,'--','Linewidth',0.8,'Color','#2C73D2');
yline(0.56,'--','Linewidth',0.8,'Color','#B0A8B9');
yline(0.78,'--','Linewidth',0.8,'Color','#FF8066');

yticks([0.22,0.33,0.44,0.56,0.78]);
yticklabels({'p_0=0.22','(p_0+p_m)/2','p_m=0.44','p_m"=0.56','p_0"=0.78'});
legend('Female sex ratio','Male sex ratio');