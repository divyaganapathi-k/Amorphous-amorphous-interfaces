% j=1;
% for i=1:1:9875
%    H=N3(:,:,i);
%    imagesc(H);
%    colormap(cmap)
%    set(gca,'TickDir','out');
%    h=gcf;
%    saveas(h,strcat('E:\Final version-Movies(interfaces)\W3-unpinned\',num2str(j),'.tif'));
%    j=j+1;
% end
% [FinalCoordinates1(:,4),FinalCoordinates1(:,5)]=pol2cart(pi/2+FinalCoordinates1(:,1),FinalCoordinates1(:,2));
% [FinalCoordinates2(:,4),FinalCoordinates2(:,5)]=pol2cart(pi/2+FinalCoordinates2(:,1),FinalCoordinates2(:,2));
% [FinalCoordinates3(:,4),FinalCoordinates3(:,5)]=pol2cart(pi/2+FinalCoordinates3(:,1),FinalCoordinates3(:,2));
% [FinalCoordinates4(:,4),FinalCoordinates4(:,5)]=pol2cart(pi/2+FinalCoordinates4(:,1),FinalCoordinates4(:,2));
% [FinalCoordinates5(:,4),FinalCoordinates5(:,5)]=pol2cart(pi/2+FinalCoordinates5(:,1),FinalCoordinates5(:,2));
% [FinalCoordinates6(:,4),FinalCoordinates6(:,5)]=pol2cart(pi/2+FinalCoordinates6(:,1),FinalCoordinates6(:,2));
% [FinalCoordinates7(:,4),FinalCoordinates7(:,5)]=pol2cart(pi/2+FinalCoordinates7(:,1),FinalCoordinates7(:,2));
% [FinalCoordinates8(:,4),FinalCoordinates8(:,5)]=pol2cart(pi/2+FinalCoordinates8(:,1),FinalCoordinates8(:,2));
% [FinalCoordinates9(:,4),FinalCoordinates9(:,5)]=pol2cart(pi/2+FinalCoordinates9(:,1),FinalCoordinates9(:,2));
% [FinalCoordinates10(:,4),FinalCoordinates10(:,5)]=pol2cart(pi/2+FinalCoordinates10(:,1),FinalCoordinates10(:,2));
% [FinalCoordinates11(:,4),FinalCoordinates11(:,5)]=pol2cart(pi/2+FinalCoordinates11(:,1),FinalCoordinates11(:,2));
% [FinalCoordinates12(:,4),FinalCoordinates12(:,5)]=pol2cart(pi/2+FinalCoordinates12(:,1),FinalCoordinates12(:,2));
% [FinalCoordinates13(:,4),FinalCoordinates13(:,5)]=pol2cart(pi/2+FinalCoordinates13(:,1),FinalCoordinates13(:,2));
% [FinalCoordinates14(:,4),FinalCoordinates14(:,5)]=pol2cart(pi/2+FinalCoordinates14(:,1),FinalCoordinates14(:,2));
% [FinalCoordinates15(:,4),FinalCoordinates15(:,5)]=pol2cart(pi/2+FinalCoordinates15(:,1),FinalCoordinates15(:,2));
% [FinalCoordinates16(:,4),FinalCoordinates16(:,5)]=pol2cart(pi/2+FinalCoordinates16(:,1),FinalCoordinates16(:,2));
% [FinalCoordinates17(:,4),FinalCoordinates17(:,5)]=pol2cart(pi/2+FinalCoordinates17(:,1),FinalCoordinates17(:,2));
% [FinalCoordinates18(:,4),FinalCoordinates18(:,5)]=pol2cart(pi/2+FinalCoordinates18(:,1),FinalCoordinates18(:,2));
% FinalCoordinates1(:,4)=FinalCoordinates1(:,4)+(28);
% FinalCoordinates1(:,5)=FinalCoordinates1(:,5)+(49);
% FinalCoordinates2(:,4)=FinalCoordinates2(:,4)+(9);
% FinalCoordinates2(:,5)=FinalCoordinates2(:,5)+(53);
% FinalCoordinates3(:,4)=FinalCoordinates3(:,4)+(25);
% FinalCoordinates3(:,5)=FinalCoordinates3(:,5)+(58);
% FinalCoordinates4(:,4)=FinalCoordinates4(:,4)+(30);
% FinalCoordinates4(:,5)=FinalCoordinates4(:,5)+(20);
% FinalCoordinates5(:,4)=FinalCoordinates5(:,4)+(14);
% FinalCoordinates5(:,5)=FinalCoordinates5(:,5)+(12);
% FinalCoordinates6(:,4)=FinalCoordinates6(:,4)+(33);
% FinalCoordinates6(:,5)=FinalCoordinates6(:,5)+(32);
% FinalCoordinates7(:,4)=FinalCoordinates7(:,4)+(11);
% FinalCoordinates7(:,5)=FinalCoordinates7(:,5)+(31);
% FinalCoordinates8(:,4)=FinalCoordinates8(:,4)+(26);
% FinalCoordinates8(:,5)=FinalCoordinates8(:,5)+(61);
% FinalCoordinates9(:,4)=FinalCoordinates9(:,4)+(10);
% FinalCoordinates9(:,5)=FinalCoordinates9(:,5)+(37);
% FinalCoordinates10(:,4)=FinalCoordinates10(:,4)+(52);
% FinalCoordinates10(:,5)=FinalCoordinates10(:,5)+(31);
% FinalCoordinates11(:,4)=FinalCoordinates11(:,4)+(47);
% FinalCoordinates11(:,5)=FinalCoordinates11(:,5)+(29);
% FinalCoordinates12(:,4)=FinalCoordinates12(:,4)+(31);
% FinalCoordinates12(:,5)=FinalCoordinates12(:,5)+(52);
% FinalCoordinates13(:,4)=FinalCoordinates13(:,4)+(8);
% FinalCoordinates13(:,5)=FinalCoordinates13(:,5)+(60);
% FinalCoordinates14(:,4)=FinalCoordinates14(:,4)+(32);
% FinalCoordinates14(:,5)=FinalCoordinates14(:,5)+(30);
% FinalCoordinates15(:,4)=FinalCoordinates15(:,4)+(15);
% FinalCoordinates15(:,5)=FinalCoordinates15(:,5)+(10);
% FinalCoordinates16(:,4)=FinalCoordinates16(:,4)+(9);
% FinalCoordinates16(:,5)=FinalCoordinates16(:,5)+(48);
% FinalCoordinates17(:,4)=FinalCoordinates17(:,4)+(45);
% FinalCoordinates17(:,5)=FinalCoordinates17(:,5)+(29);
% FinalCoordinates18(:,4)=FinalCoordinates18(:,4)+(27);
% FinalCoordinates18(:,5)=FinalCoordinates18(:,5)+(26);
% % [1 0.78 0.8]
j=1;
% %
for i=1920:30:1920
    H=imread(strcat('E:\Final version-Movies(interfaces)\W3-blurred2\',num2str(i),'.tif'));
    imshow(H);
    hold on
    f=find(FinalCoordinates1(:,3)==i);
    if isempty(f)==0
        scatter((28*(580/54)),(49*(780/72)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot((FinalCoordinates1(f,4)*(580/54)),(FinalCoordinates1(f,5)*(780/72)),'Color',[0.4 0.4 0.4],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates1(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates1(f(end),4:5);
        plot((finalcoordinates(:,1)*(580/54)),(finalcoordinates(:,2)*(780/72)),'Color',[0.4 0.4 0.4],'LineWidth',2);
    end
    f=find(FinalCoordinates2(:,3)==i);
    if isempty(f)==0
        scatter((9*(580/54)),(53*(780/72)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot((FinalCoordinates2(f,4)*(580/54)),(FinalCoordinates2(f,5)*(780/72)),'Color',[0.7 0.7 0.7],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates2(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates2(f(end),4:5);
        plot((finalcoordinates(:,1)*(580/54)),(finalcoordinates(:,2)*(780/72)),'Color',[0.7 0.7 0.7],'LineWidth',2);
    end
%     f=find(FinalCoordinates3(:,3)==i);
%     if isempty(f)==0
%         scatter((25*(580/54)),(58*(780/72)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot((FinalCoordinates3(f,4)*(580/54)),(FinalCoordinates3(f,5)*(780/72)),'Color',[0 0.6 0.7],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates3(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates3(f(end),4:5);
%         plot((finalcoordinates(:,1)*(580/54)),(finalcoordinates(:,2)*(780/72)),'Color',[0 0.6 0.7],'LineWidth',2);
%     end
%     f=find(FinalCoordinates4(:,3)==i);
%     if isempty(f)==0
%         scatter((30*(580/54)),(20*(780/72)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot((FinalCoordinates4(f,4)*(580/54)),(FinalCoordinates4(f,5)*(780/72)),'Color',[1 0.78 0.8],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates5(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates5(f(end),4:5);
%         plot((finalcoordinates(:,1)*(580/54)),(finalcoordinates(:,2)*(780/72)),'Color',[1 0.78 0.8],'LineWidth',2);
%     end
    f=find(FinalCoordinates5(:,3)==i);
    if isempty(f)==0
        scatter((14*(580/54)),(12*(780/72)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot((FinalCoordinates5(f,4)*(580/54)),(FinalCoordinates5(f,5)*(780/72)),'Color',[0.2 0.3 0.9],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates5(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates5(f(end),4:5);
        plot((finalcoordinates(:,1)*(580/54)),(finalcoordinates(:,2)*(780/72)),'Color',[0.2 0.3 0.9],'LineWidth',2);
    end
    f=find(FinalCoordinates6(:,3)==i);
    if isempty(f)==0
        scatter((33*(580/54)),(32*(780/72)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot((FinalCoordinates6(f,4)*(580/54)),(FinalCoordinates6(f,5)*(780/72)),'Color',[1 1 1],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates6(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates6(f(end),4:5);
        plot((finalcoordinates(:,1)*(580/54)),(finalcoordinates(:,2)*(780/72)),'Color',[1 1 1],'LineWidth',2);
    end
%     f=find(FinalCoordinates7(:,3)==i);
%     if isempty(f)==0
%         scatter((11*(580/54)),(31*(780/72)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot((FinalCoordinates7(f,4)*(580/54)),(FinalCoordinates7(f,5)*(780/72)),'Color',[0.8 0.05 0.05],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates7(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates7(f(end),4:5);
%         plot((finalcoordinates(:,1)*(580/54)),(finalcoordinates(:,2)*(780/72)),'Color',[0.8 0.05 0.05],'LineWidth',2);
%     end
%     f=find(FinalCoordinates8(:,3)==i);
%     if isempty(f)==0
%         scatter((26*(580/54)),(61*(780/72)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot((FinalCoordinates8(f,4)*(580/54)),(FinalCoordinates8(f,5)*(580/54)),'Color',[0.7 0.7 1],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates8(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates8(f(end),4:5);
%         plot((finalcoordinates(:,1)*(580/54)),(finalcoordinates(:,2)*(580/54)),'Color',[0.7 0.7 1],'LineWidth',2);
%     end
    f=find(FinalCoordinates9(:,3)==i);
    if isempty(f)==0
        scatter((10*(580/54)),(37*(780/72)),20,'k','filled');
        scatter((FinalCoordinates9(f,4)*(780/72)),(FinalCoordinates9(f,5)*(580/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
        plot((FinalCoordinates9(f,4)*(780/72)),(FinalCoordinates9(f,5)*(580/54)),'-ok','LineWidth',1,'MarkerSize',2,'MarkerEdgeColor','r','MarkerFaceColor','w');
    end
%     f=find(FinalCoordinates10(:,3)==i);
%     if isempty(f)==0
%         scatter((52*(580/54)),(31*(580/54)),20,'k','filled');
%         scatter((FinalCoordinates10(f,4)*(780/72)),(FinalCoordinates10(f,5)*(580/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
%         plot((FinalCoordinates10(f,4)*(780/72)),(FinalCoordinates10(f,5)*(580/54)),'-ok','LineWidth',1,'MarkerSize',2,'MarkerEdgeColor','b','MarkerFaceColor','w');
%     end
    f=find(FinalCoordinates11(:,3)==i);
    if isempty(f)==0
        scatter((47*(580/54)),(29*(580/54)),20,'k','filled');
        scatter((FinalCoordinates11(f,4)*(780/72)),(FinalCoordinates11(f,5)*(580/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
        plot((FinalCoordinates11(f,4)*(780/72)),(FinalCoordinates11(f,5)*(580/54)),'-ok','LineWidth',1,'MarkerSize',2,'MarkerEdgeColor','m','MarkerFaceColor','w');
    end
    f=find(FinalCoordinates12(:,3)==i);
    if isempty(f)==0
        scatter((31*(580/54)),(52*(580/54)),20,'k','filled');
        scatter((FinalCoordinates12(f,4)*(780/72)),(FinalCoordinates12(f,5)*(580/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
        plot((FinalCoordinates12(f,4)*(780/72)),(FinalCoordinates12(f,5)*(580/54)),'-ok','LineWidth',1,'MarkerSize',2,'MarkerEdgeColor','m','MarkerFaceColor','w');
    end
    f=find(FinalCoordinates13(:,3)==i);
    if isempty(f)==0
        scatter((8*(580/54)),(60*(580/54)),20,'k','filled');
        scatter((FinalCoordinates13(f,4)*(780/72)),(FinalCoordinates13(f,5)*(580/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
        plot((FinalCoordinates13(f,4)*(780/72)),(FinalCoordinates13(f,5)*(580/54)),'-ok','LineWidth',1,'MarkerSize',2,'MarkerEdgeColor','m','MarkerFaceColor','w');
    end
    f=find(FinalCoordinates14(:,3)==i);
    if isempty(f)==0
        scatter((32*(580/54)),(30*(580/54)),20,'k','filled');
        scatter((FinalCoordinates14(f,4)*(780/72)),(FinalCoordinates14(f,5)*(580/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
        plot((FinalCoordinates14(f,4)*(780/72)),(FinalCoordinates14(f,5)*(580/54)),'-ok','LineWidth',1,'MarkerSize',2,'MarkerEdgeColor','m','MarkerFaceColor','w');
    end
    f=find(FinalCoordinates15(:,3)==i);
    if isempty(f)==0
        scatter((15*(580/54)),(10*(580/54)),20,'k','filled');
        scatter((FinalCoordinates15(f,4)*(780/72)),(FinalCoordinates15(f,5)*(580/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
        plot((FinalCoordinates15(f,4)*(780/72)),(FinalCoordinates15(f,5)*(580/54)),'-ok','LineWidth',1,'MarkerSize',2,'MarkerEdgeColor','m','MarkerFaceColor','w');
    end
    f=find(FinalCoordinates16(:,3)==i);
    if isempty(f)==0
        scatter((9*(580/54)),(48*(580/54)),20,'k','filled');
        scatter((FinalCoordinates16(f,4)*(780/72)),(FinalCoordinates16(f,5)*(580/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
        plot((FinalCoordinates16(f,4)*(780/72)),(FinalCoordinates16(f,5)*(580/54)),'-ok','LineWidth',1,'MarkerSize',2,'MarkerEdgeColor','m','MarkerFaceColor','w');
    end
    f=find(FinalCoordinates17(:,3)==i);
    if isempty(f)==0
        scatter((45*(580/54)),(29*(580/54)),20,'k','filled');
        scatter((FinalCoordinates17(f,4)*(780/72)),(FinalCoordinates17(f,5)*(580/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
        plot((FinalCoordinates17(f,4)*(780/72)),(FinalCoordinates17(f,5)*(580/54)),'-ok','LineWidth',1,'MarkerSize',2,'MarkerEdgeColor','m','MarkerFaceColor','w');
    end
    f=find(FinalCoordinates18(:,3)==i);
    if isempty(f)==0
        scatter((27*(580/54)),(26*(580/54)),20,'k','filled');
        scatter((FinalCoordinates18(f,4)*(780/72)),(FinalCoordinates18(f,5)*(580/54)),3,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
        plot((FinalCoordinates18(f,4)*(780/72)),(FinalCoordinates18(f,5)*(580/54)),'-ok','LineWidth',1,'MarkerSize',2,'MarkerEdgeColor','m','MarkerFaceColor','w');
    end
    hold off
    h=gcf;
    saveas(h,strcat('E:\Final version-Movies(interfaces)\W3-unpinnedinterfaces1\',num2str(j),'.tif'));
    j=j+1;
    close();
end