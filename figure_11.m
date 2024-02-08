%Group bar chart of parasitic ralationship between flounder and sea lamprey

%k2 is divided into 9 parts,every part is 0.22. So,k2 is as follows:0.2840、0.3195、0.3550、 0.3905、0.4260、0.4615、0.4970、0.5325、 0.5680；
MAX=[76.21 	79.72 	83.60 	87.35 	91.68 	95.73 	100.81 	105.15 	109.61; 
14.03 	14.21 	14.47 	14.65 	15.01 	15.26 	15.72 	16.02 	16.36 ];

MIN=[11.39 	12.10 	12.69 	13.54 	13.90 	14.50 	14.73 	15.24 	15.71; 
1.85 	1.80 	1.74 	1.69 	1.61 	1.55 	1.45 	1.39 	1.33 ]; 

m=bar([MIN;MAX]',"grouped");

set(m(1),'EdgeColor','none','facecolor',[0.61,0.05,0.16],'FaceAlpha',.5);
set(m(2),'EdgeColor','none','facecolor',[0.26, 0.45, 0.77],'FaceAlpha',.5);
set(m(3),'EdgeColor','none','facecolor',[ 240,230,140]./360,'FaceAlpha',.5);
set(m(4),'EdgeColor','none','facecolor',[127,255,170]./360,'FaceAlpha',.5);

legend('MIN-flounder','MIN-sea lamprey','MAX-flounder','MAX-sea lamprey','FontName','Times New Roman','Linewidth', 2);
xlabel('The death rate of sea lamprey','FontName','Times New Roman','Linewidth', 2);
ylabel('The number of two spices / (×10^2)','FontName','Times New Roman','Linewidth', 2);
title('Comparison of Changing Trends——MIN and MAX','FontName','Times New Roman','Linewidth', 2)
legend('boxoff');
loca={'0.2840','0.3195','0.3550','0.3905','0.4260','0.4615','0.4970','0.5325','0.5680'};
set(gca,'XTickLabel',loca);
