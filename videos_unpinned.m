% j=1;
% for i=1:30:3030
%    H=N3(:,:,i);
%    imagesc(H);
%    colormap(cmap)
%    set(gca,'TickDir','out');
%    h=gcf;
%    saveas(h,strcat('E:\Final version-Movies(interfaces)\W2-unpinned\',num2str(j),'.tif'));
%    j=j+1;
% end
[FinalCoordinates1(:,4),FinalCoordinates1(:,5)]=pol2cart(pi/2-FinalCoordinates1(:,1),FinalCoordinates1(:,2));
[FinalCoordinates2(:,4),FinalCoordinates2(:,5)]=pol2cart(pi/2+FinalCoordinates2(:,1),FinalCoordinates2(:,2));
[FinalCoordinates3(:,4),FinalCoordinates3(:,5)]=pol2cart(pi/2+FinalCoordinates3(:,1),FinalCoordinates3(:,2));
[FinalCoordinates4(:,4),FinalCoordinates4(:,5)]=pol2cart(pi/2+FinalCoordinates4(:,1),FinalCoordinates4(:,2));
[FinalCoordinates5(:,4),FinalCoordinates5(:,5)]=pol2cart(pi/2+FinalCoordinates5(:,1),FinalCoordinates5(:,2));
[FinalCoordinates6(:,4),FinalCoordinates6(:,5)]=pol2cart(pi/2+FinalCoordinates6(:,1),FinalCoordinates6(:,2));
[FinalCoordinates7(:,4),FinalCoordinates7(:,5)]=pol2cart(pi/2+FinalCoordinates7(:,1),FinalCoordinates7(:,2));
[FinalCoordinates8(:,4),FinalCoordinates8(:,5)]=pol2cart(pi/2+FinalCoordinates8(:,1),FinalCoordinates8(:,2));
[FinalCoordinates9(:,4),FinalCoordinates9(:,5)]=pol2cart(pi/2+FinalCoordinates9(:,1),FinalCoordinates9(:,2));
[FinalCoordinates10(:,4),FinalCoordinates10(:,5)]=pol2cart(pi/2+FinalCoordinates10(:,1),FinalCoordinates10(:,2));
[FinalCoordinates11(:,4),FinalCoordinates11(:,5)]=pol2cart(pi/2+FinalCoordinates11(:,1),FinalCoordinates11(:,2));
FinalCoordinates1(:,4)=FinalCoordinates1(:,4)+(33);
FinalCoordinates1(:,5)=FinalCoordinates1(:,5)+(25);
FinalCoordinates2(:,4)=FinalCoordinates2(:,4)+(10);
FinalCoordinates2(:,5)=FinalCoordinates2(:,5)+(58);
FinalCoordinates3(:,4)=FinalCoordinates3(:,4)+(29);
FinalCoordinates3(:,5)=FinalCoordinates3(:,5)+(44);
FinalCoordinates4(:,4)=FinalCoordinates4(:,4)+(25);
FinalCoordinates4(:,5)=FinalCoordinates4(:,5)+(13);
FinalCoordinates5(:,4)=FinalCoordinates5(:,4)+(20);
FinalCoordinates5(:,5)=FinalCoordinates5(:,5)+(11);
FinalCoordinates6(:,4)=FinalCoordinates6(:,4)+(14);
FinalCoordinates6(:,5)=FinalCoordinates6(:,5)+(46);
FinalCoordinates7(:,4)=FinalCoordinates7(:,4)+(25);
FinalCoordinates7(:,5)=FinalCoordinates7(:,5)+(57);
FinalCoordinates8(:,4)=FinalCoordinates8(:,4)+(4);
FinalCoordinates8(:,5)=FinalCoordinates8(:,5)+(13);
FinalCoordinates9(:,4)=FinalCoordinates9(:,4)+(33);
FinalCoordinates9(:,5)=FinalCoordinates9(:,5)+(21);
FinalCoordinates10(:,4)=FinalCoordinates10(:,4)+(34);
FinalCoordinates10(:,5)=FinalCoordinates10(:,5)+(22);
FinalCoordinates11(:,4)=FinalCoordinates11(:,4)+(34);
FinalCoordinates11(:,5)=FinalCoordinates11(:,5)+(31);
% [1 0.78 0.8]
j=1;
%
for i=1:30:3000
    H=imread(strcat('E:\Final version-Movies(interfaces)\W2-blurred\',num2str(j),'.tif'));
    imshow(H);
    hold on
    f=find(FinalCoordinates1(:,3)==i);
    scatter((33*(781/72)),(25*(586/54)),20,'k','filled');
%     hold on
%     scatter((FinalCoordinates1(f,4)*(781/72)),(FinalCoordinates1(f,5)*(586/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
    plot((FinalCoordinates1(f,4)*(781/72)),(FinalCoordinates1(f,5)*(586/54)),'-ow','LineWidth',1.5,'MarkerSize',5,'MarkerEdgeColor',[0.5 0.5 0.5],'MarkerFaceColor','w');
%     plot((FinalCoordinates1(f,4)*(781/72)),(FinalCoordinates1(f,5)*(586/54)),'LineWidth',5);
    f=find(FinalCoordinates2(:,3)==i);
    scatter((10*(781/72)),(58*(586/54)),20,'k','filled');
%     scatter((FinalCoordinates2(f,4)*(781/72)),(FinalCoordinates2(f,5)*(586/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
    plot((FinalCoordinates2(f,4)*(781/72)),(FinalCoordinates2(f,5)*(586/54)),'-o','Color',[0.8 0.8 0.8],'LineWidth',1,'MarkerSize',5,'MarkerEdgeColor',[0.4 0.4 0.4],'MarkerFaceColor',[0.6 0.6 0.6]);
    f=find(FinalCoordinates3(:,3)==i);
    scatter((29*(781/72)),(44*(586/54)),20,'k','filled');
    scatter((FinalCoordinates3(f,4)*(781/72)),(FinalCoordinates3(f,5)*(586/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
    plot((FinalCoordinates3(f,4)*(781/72)),(FinalCoordinates3(f,5)*(586/54)),'-o','Color',[0 0.8 1],'LineWidth',1,'MarkerSize',5,'MarkerEdgeColor',[0 0.8 1],'MarkerFaceColor',[0 0.1 0.8]);
    % f=find(FinalCoordinates4(:,3)==1);
    % scatter(25,13,20,'k','filled');
    % scatter((FinalCoordinates4(f,4)*(781/72)),(FinalCoordinates4(f,5)*(586/54)),10,'k','filled');
    % plot((FinalCoordinates4(f,4)*(781/72)),(FinalCoordinates4(f,5)*(586/54)));
    f=find(FinalCoordinates5(:,3)==i);
    scatter((20*(781/72)),(11*(586/54)),20,'k','filled');
%     scatter((FinalCoordinates5(f,4)*(781/72)),(FinalCoordinates5(f,5)*(586/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
    plot((FinalCoordinates5(f,4)*(781/72)),(FinalCoordinates5(f,5)*(586/54)),'-o','Color',[0 0.3 1],'LineWidth',1,'MarkerSize',5,'MarkerEdgeColor',[0 0.3 1],'MarkerFaceColor',[1 0.6 0.7]);
    f=find(FinalCoordinates6(:,3)==i);
    scatter((14*(781/72)),(46*(586/54)),20,'k','filled');
%     scatter((FinalCoordinates6(f,4)*(781/72)),(FinalCoordinates6(f,5)*(586/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
    plot((FinalCoordinates6(f,4)*(781/72)),(FinalCoordinates6(f,5)*(586/54)),'-o','Color',[1 1 1],'LineWidth',1,'MarkerSize',5,'MarkerEdgeColor',[0.1 0.1 0.1],'MarkerFaceColor','r');
    f=find(FinalCoordinates7(:,3)==i);
    scatter((25*(781/72)),(57*(586/54)),20,'k','filled');
%     scatter((FinalCoordinates7(f,4)*(781/72)),(FinalCoordinates7(f,5)*(586/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
    plot((FinalCoordinates7(f,4)*(781/72)),(FinalCoordinates7(f,5)*(586/54)),'-o','Color',[1 1 1],'LineWidth',1,'MarkerSize',5,'MarkerEdgeColor',[0.5 0 0],'MarkerFaceColor',[0.5 0 0]);
    f=find(FinalCoordinates8(:,3)==i);
    scatter((4*(781/72)),(13*(586/54)),20,'k','filled');
%     scatter((FinalCoordinates8(f,4)*(781/72)),(FinalCoordinates8(f,5)*(586/54)),3,'k','filled');
    plot((FinalCoordinates8(f,4)*(781/72)),(FinalCoordinates8(f,5)*(586/54)),'-o','Color',[0.7 0.7 1],'LineWidth',1,'MarkerSize',5,'MarkerEdgeColor',[0.5 0.5 1],'MarkerFaceColor','w');
%     f=find(FinalCoordinates9(:,3)==i);
%     scatter((33*(781/72)),(21*(586/54)),20,'k','filled');
%     scatter((FinalCoordinates9(f,4)*(781/72)),(FinalCoordinates9(f,5)*(586/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
%     plot((FinalCoordinates9(f,4)*(781/72)),(FinalCoordinates9(f,5)*(586/54)),'-ok','LineWidth',1,'MarkerSize',2,'MarkerEdgeColor','r','MarkerFaceColor','w');
    f=find(FinalCoordinates10(:,3)==i);
    scatter((34*(781/72)),(22*(586/54)),20,'k','filled');
%     scatter((FinalCoordinates10(f,4)*(781/72)),(FinalCoordinates10(f,5)*(586/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
    plot((FinalCoordinates10(f,4)*(781/72)),(FinalCoordinates10(f,5)*(586/54)),'-o','Color',[1 0.88 0.9],'LineWidth',1,'MarkerSize',5,'MarkerEdgeColor',[1 0.78 0.8],'MarkerFaceColor','w');
%     f=find(FinalCoordinates11(:,3)==i);
%     scatter((34*(781/72)),(31*(586/54)),20,'k','filled');
%     scatter((FinalCoordinates11(f,4)*(781/72)),(FinalCoordinates11(f,5)*(586/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
%     plot((FinalCoordinates11(f,4)*(781/72)),(FinalCoordinates11(f,5)*(586/54)),'-ok','LineWidth',1,'MarkerSize',2,'MarkerEdgeColor','m','MarkerFaceColor','w');
    hold off
    h=gcf;
    saveas(h,strcat('E:\Final version-Movies(interfaces)\W2-unpinnedinterfaces1\',num2str(j),'.tif'));
    j=j+1;
    close();
end