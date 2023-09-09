% clearvars -except N3 cmap
% for i=1:1:9
%     load(strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas1',num2str(i),'.mat'));
%     f=find(DD(:,3)==3030);
%     pins=DD(f,:);
%     dummy1=matlab.lang.makeValidName(strcat('pins',num2str(ii)));
%     eval([dummy1 '= pins;']);
% end
% C=intersect(pins1,pins2,'rows');
% C1=intersect(C,pins3,'rows');
% C2=intersect(C1,pins4,'rows');
% C3=intersect(C2,pins5,'rows');
% C4=intersect(C3,pins6,'rows');
% C5=intersect(C4,pins7,'rows');
% C6=intersect(C5,pins8,'rows');
% finalpins=intersect(C6,pins9,'rows');
% H=N3(:,1:44,1);
H=mean(N3,3);
H=H(:,1:44);
imagesc(H);
pbaspect([44 72 1])
colormap(cmap);
set(gca,'TickDir','out');
axis off
hold on
% scatter(finalpins(:,2),finalpins(:,1),15,'r','filled');
scatter(finalpins(:,2),finalpins(:,1),10,'MarkerEdgeColor','w','MarkerFaceColor','r','LineWidth',1);
% rotate( gca, [0 1 0], 90)
camroll(-90)
hold off