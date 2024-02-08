%Group bar chart of predator ralationship between zooplankton and sea lamprey

MAX=[10128 	10131 	10131 	10132 	10134 	10146 	10165 	10160 	10146 ;
427 	415 	403 	392 	382 	372 	363 	353 	344 ];

MIN=[8 	18 	34 	57 	89 	129 	180 	242 	314 ;
16 	17 	19 	20 	21 	23 	24 	26 	27]; 
%k2 is divided into 9 parts,every part is 0.22. 
%So,k2 is as follows:0.2840、0.3195、0.3550、 0.3905、0.4260、0.4615、0.4970、0.5325、 0.5680；

m=bar([MIN;MAX]',"grouped");
title("分组条形图");

set(m(1),'EdgeColor','none','facecolor',[0.61,0.05,0.16],'FaceAlpha',.5);
set(m(2),'EdgeColor','none','facecolor',[0.26, 0.45, 0.77],'FaceAlpha',.5);
set(m(3),'EdgeColor','none','facecolor',[ 240,230,140]./360,'FaceAlpha',.5);
set(m(4),'EdgeColor','none','facecolor',[127,255,170]./360,'FaceAlpha',.5);
legend('MIN zooplankton','MIN sea lamprey','MAX zooplankton','MAX sea lamprey','FontName','Times New Roman','Linewidth', 2);
xlabel('The death rate of sea lamprey','FontName','Times New Roman','Linewidth', 2);
ylabel('The number of two spices','FontName','Times New Roman','Linewidth', 2);
title('Comparison of Changing Trends——MIN and MAX','FontName','Times New Roman','Linewidth', 2)
legend('boxoff');
loca={'0.2840','0.3195','0.3550','0.3905','0.4260','0.4615','0.4970','0.5325','0.5680'};
set(gca,'XTickLabel',loca);

% figure
% m=bar([MIN]',"grouped");
% 
% set(m(1),'EdgeColor','none','facecolor',[0.61,0.05,0.16],'FaceAlpha',.2);
% set(m(2),'EdgeColor','none','facecolor',[152,251,152]./360,'FaceAlpha',.2);
% 
% xlabel('The death rate of sea lamprey','FontName','Times New Roman','Linewidth', 2);
% ylabel('The minimum of two spices / (×10^2)','FontName','Times New Roman','Linewidth', 2);
% title('Changing Tendency','FontName','Times New Roman','Linewidth', 2)
% 
% xtips1 = m(1).XEndPoints;
% ytips1 = m(1).YEndPoints;
% labels1 = string(m(1).YData);
% text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
%     'VerticalAlignment','bottom')
% 
% xtips2 = m(2).XEndPoints;
% ytips2 = m(2).YEndPoints;
% labels2 = string(m(2).YData);
% text(xtips2,ytips2,labels2,'HorizontalAlignment','center',...
%     'VerticalAlignment','bottom')
% 
% loca={'0.2840','0.3195','0.3550','0.3905','0.4260','0.4615','0.4970','0.5325','0.5680'};
% set(gca,'XTickLabel',loca);
% 
% hold on;
% g=plot(0.5.*[MIN]','-o','Linewidth',2);
% set(g(1),'color','#9F9FD5');
% set(g(2),'color','#F0E68C');
% legend('MIN-zooplankton','MIN-sea lamprey','Changing Tendency Line 1','Changing Tendency Line 2','FontName','Times New Roman','Linewidth', 2);
% legend('boxoff');
