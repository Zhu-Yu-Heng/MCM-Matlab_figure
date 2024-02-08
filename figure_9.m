%Layer-stacking diagram

%k2 is divided into 9 parts with a gradient of 0.22. In this order,：0.76、0.98、1.2、1.42、1.64、1.86、2.08、2.3、2.52
MAX=[1000,1000,1000,1000,1000,1000,1000,1000,1000,];
MIN=[77,51,36,25,18,13,9,4,1];

m=bar([MIN;MAX]',"grouped");
title("分组条形图");

set(m(1),'EdgeColor','none','facecolor',[0.61,0.05,0.16],'FaceAlpha',.5);
set(m(2),'EdgeColor','none','facecolor',[0.26, 0.45, 0.77],'FaceAlpha',.5);
legend('MIN','MAX','FontName','Times New Roman','Linewidth', 2);
xlabel('The growth rate of sea lamprey','FontName','Times New Roman','Linewidth', 2);
ylabel('The number of sea lamprey','FontName','Times New Roman','Linewidth', 2);
title('Comparison of Changing Trends——MIN and MAX','FontName','Times New Roman','Linewidth', 2)
legend('boxoff');
loca={'0.76','0.98','1.2','1.42','1.64','1.86','2.08','2.3','2.52'};
set(gca,'XTickLabel',loca);

figure
m=bar([MIN]',"grouped");
title("分组条形图");

set(m,'EdgeColor','none','facecolor',[0.61,0.05,0.16],'FaceAlpha',.2);

xlabel('The growth rate of sea lamprey','FontName','Times New Roman','Linewidth', 2);
ylabel('The number of sea lamprey','FontName','Times New Roman','Linewidth', 2);
title('Changing Tendency','FontName','Times New Roman','Linewidth', 2)

loca={'0.76','0.98','1.2','1.42','1.64','1.86','2.08','2.3','2.52'};
set(gca,'XTickLabel',loca);

hold on;
plot(0.5.*[MIN]','-o','Linewidth',2,'color','#9F9FD5');
legend('MIN','Changing Tendency Line','FontName','Times New Roman','Linewidth', 2);
legend('boxoff');
x=1:9;
for i = 1:9
    text(x(i),MIN(1,i),num2str(MIN(1,i)),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',8,'FontName','Times New Roman');
end;