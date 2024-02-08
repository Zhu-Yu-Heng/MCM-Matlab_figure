%Group bar chart of competition between cod and sea lamprey

%k2 is divided into 9 parts,every part is 0.22.So,k2 is as follows:0.76、0.98、1.2、1.42、1.64、1.86、2.08、2.3、2.52
MAX=[2835.56 	2837.33 	2839.57 	2841.30 	2842.58 	2843.54 	2844.23 	2844.83 	2845.17 ; 
1094.52 	1185.11 	1248.28 	1294.13 	1328.23 	1354.14 	1374.48 	1390.71 	1403.86 ];

MIN=[300 300 300 300 300 300 300 300 300; 
300	300	300	300	300	300	300	300	300]; 

m=bar([MIN;MAX]',"grouped");

set(m(1),'EdgeColor','none','facecolor',[0.61,0.05,0.16],'FaceAlpha',.5);
set(m(2),'EdgeColor','none','facecolor',[0.26, 0.45, 0.77],'FaceAlpha',.5);
set(m(3),'EdgeColor','none','facecolor',[ 240,230,140]./360,'FaceAlpha',.5);
set(m(4),'EdgeColor','none','facecolor',[127,255,170]./360,'FaceAlpha',.5);

legend('MIN-cod','MIN-sea lamprey','MAX-cod','MAX-sea lamprey','FontName','Times New Roman','Linewidth', 2);
xlabel('The growth rate of sea lamprey','FontName','Times New Roman','Linewidth', 2);
ylabel('The number of two species','FontName','Times New Roman','Linewidth', 2);
title('Comparison of Changing Trends——MIN and MAX','FontName','Times New Roman','Linewidth', 2)
legend('boxoff');
loca={'0.76','0.98','1.2','1.42','1.64','1.86','2.08','2.3','2.52'};
set(gca,'XTickLabel',loca);
