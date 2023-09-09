H=N2(:,1:44,1);
imagesc(H);
colormap(cmap);
set(gca,'TickDir','out');
hold on
f=find(FinalCoordinates1(:,5)==1);
scatter(33,25,20,'k','filled');
scatter(FinalCoordinates1(f,2),FinalCoordinates1(f,1),10,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
plot(FinalCoordinates1(f,2),FinalCoordinates1(f,1),'-ok','LineWidth',1,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
f=find(FinalCoordinates2(:,5)==1);
scatter(10,58,20,'k','filled');
scatter(FinalCoordinates2(f,2),FinalCoordinates2(f,1),10,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
plot(FinalCoordinates2(f,2),FinalCoordinates2(f,1),'-ok','LineWidth',1,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
f=find(FinalCoordinates3(:,5)==1);
scatter(29,44,20,'k','filled');
scatter(FinalCoordinates3(f,2),FinalCoordinates3(f,1),10,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
plot(FinalCoordinates3(f,2),FinalCoordinates3(f,1),'-ok','LineWidth',1,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
% f=find(FinalCoordinates4(:,5)==1);
% scatter(25,13,20,'k','filled');
% scatter(FinalCoordinates4(f,2),FinalCoordinates4(f,1),10,'k','filled');
% plot(FinalCoordinates4(f,2),FinalCoordinates4(f,1));
f=find(FinalCoordinates5(:,5)==1);
scatter(20,11,20,'k','filled');
scatter(FinalCoordinates5(f,2),FinalCoordinates5(f,1),10,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
plot(FinalCoordinates5(f,2),FinalCoordinates5(f,1),'-ok','LineWidth',1,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
f=find(FinalCoordinates6(:,5)==1);
scatter(14,46,20,'k','filled');
scatter(FinalCoordinates6(f,2),FinalCoordinates6(f,1),10,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
plot(FinalCoordinates6(f,2),FinalCoordinates6(f,1),'-ok','LineWidth',1,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
f=find(FinalCoordinates7(:,5)==1);
scatter(25,57,20,'k','filled');
scatter(FinalCoordinates7(f,2),FinalCoordinates7(f,1),10,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
plot(FinalCoordinates7(f,2),FinalCoordinates7(f,1),'-ok','LineWidth',1,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
f=find(FinalCoordinates8(:,5)==1);
scatter(4,13,20,'k','filled');
scatter(FinalCoordinates8(f,2),FinalCoordinates8(f,1),10,'k','filled');
plot(FinalCoordinates8(f,2),FinalCoordinates8(f,1),'-ok','LineWidth',1,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
f=find(FinalCoordinates9(:,5)==1);
scatter(33,21,20,'k','filled');
scatter(FinalCoordinates9(f,2),FinalCoordinates9(f,1),10,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
plot(FinalCoordinates9(f,2),FinalCoordinates9(f,1),'-ok','LineWidth',1,'MarkerSize',5,'MarkerEdgeColor','r','MarkerFaceColor','w');
f=find(FinalCoordinates10(:,5)==1);
scatter(34,22,20,'k','filled');
scatter(FinalCoordinates10(f,2),FinalCoordinates10(f,1),10,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
plot(FinalCoordinates10(f,2),FinalCoordinates10(f,1),'-ok','LineWidth',1,'MarkerSize',5,'MarkerEdgeColor','b','MarkerFaceColor','w');
f=find(FinalCoordinates11(:,5)==1);
scatter(34,31,20,'k','filled');
scatter(FinalCoordinates11(f,2),FinalCoordinates11(f,1),10,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
plot(FinalCoordinates11(f,2),FinalCoordinates11(f,1),'-ok','LineWidth',1,'MarkerSize',5,'MarkerEdgeColor','m','MarkerFaceColor','w');
hold off