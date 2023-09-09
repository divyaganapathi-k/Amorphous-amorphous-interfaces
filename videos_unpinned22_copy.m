% j=1;
% A=zeros(72,1);
% for i=3001:30:9060
%    H=N3(:,:,i);
%    H=horzcat(H,A);
%    imagesc(H);
%    colormap(cmap)
%    set(gca,'TickDir','out');
%    h=gcf;
%    saveas(h,strcat('E:\Final version-Movies(interfaces)\W3_unpinned_persistent\',num2str(j),'.tif'));
%    j=j+1;
% end
[FinalCoordinates1(:,4),FinalCoordinates1(:,5)]=pol2cart(pi/2+FinalCoordinates1(:,1),FinalCoordinates1(:,2));
[FinalCoordinates2(:,4),FinalCoordinates2(:,5)]=pol2cart(pi/2+FinalCoordinates2(:,1),FinalCoordinates2(:,2));
[FinalCoordinates3(:,4),FinalCoordinates3(:,5)]=pol2cart(pi/2+FinalCoordinates3(:,1),FinalCoordinates3(:,2));
% [FinalCoordinates4(:,4),FinalCoordinates4(:,5)]=pol2cart(pi/2+FinalCoordinates4(:,1),FinalCoordinates4(:,2));
[FinalCoordinates5(:,4),FinalCoordinates5(:,5)]=pol2cart(pi/2+FinalCoordinates5(:,1),FinalCoordinates5(:,2));
[FinalCoordinates6(:,4),FinalCoordinates6(:,5)]=pol2cart(pi/2+FinalCoordinates6(:,1),FinalCoordinates6(:,2));
[FinalCoordinates7(:,4),FinalCoordinates7(:,5)]=pol2cart(pi/2+FinalCoordinates7(:,1),FinalCoordinates7(:,2));
[FinalCoordinates8(:,4),FinalCoordinates8(:,5)]=pol2cart(pi/2+FinalCoordinates8(:,1),FinalCoordinates8(:,2));
[FinalCoordinates9(:,4),FinalCoordinates9(:,5)]=pol2cart(pi/2+FinalCoordinates9(:,1),FinalCoordinates9(:,2));
[FinalCoordinates10(:,4),FinalCoordinates10(:,5)]=pol2cart(pi/2+FinalCoordinates10(:,1),FinalCoordinates10(:,2));
[FinalCoordinates11(:,4),FinalCoordinates11(:,5)]=pol2cart(pi/2+FinalCoordinates11(:,1),FinalCoordinates11(:,2));
[FinalCoordinates12(:,4),FinalCoordinates12(:,5)]=pol2cart(pi/2+FinalCoordinates12(:,1),FinalCoordinates12(:,2));
[FinalCoordinates13(:,4),FinalCoordinates13(:,5)]=pol2cart(pi/2+FinalCoordinates13(:,1),FinalCoordinates13(:,2));
[FinalCoordinates14(:,4),FinalCoordinates14(:,5)]=pol2cart(pi/2+FinalCoordinates14(:,1),FinalCoordinates14(:,2));
[FinalCoordinates15(:,4),FinalCoordinates15(:,5)]=pol2cart(pi/2+FinalCoordinates15(:,1),FinalCoordinates15(:,2));
[FinalCoordinates16(:,4),FinalCoordinates16(:,5)]=pol2cart(pi/2+FinalCoordinates16(:,1),FinalCoordinates16(:,2));
[FinalCoordinates17(:,4),FinalCoordinates17(:,5)]=pol2cart(pi/2+FinalCoordinates17(:,1),FinalCoordinates17(:,2));
% % [FinalCoordinates18(:,4),FinalCoordinates18(:,5)]=pol2cart(pi/2+FinalCoordinates18(:,1),FinalCoordinates18(:,2));
FinalCoordinates1(:,4)=FinalCoordinates1(:,4)+(27);
FinalCoordinates1(:,5)=FinalCoordinates1(:,5)+(26);
FinalCoordinates2(:,4)=FinalCoordinates2(:,4)+(28);
FinalCoordinates2(:,5)=FinalCoordinates2(:,5)+(49);
FinalCoordinates3(:,4)=FinalCoordinates3(:,4)+(9);
FinalCoordinates3(:,5)=FinalCoordinates3(:,5)+(53);
% FinalCoordinates4(:,4)=FinalCoordinates4(:,4)+(26);
% FinalCoordinates4(:,5)=FinalCoordinates4(:,5)+(61);
FinalCoordinates5(:,4)=FinalCoordinates5(:,4)+(26);
FinalCoordinates5(:,5)=FinalCoordinates5(:,5)+(61);
FinalCoordinates6(:,4)=FinalCoordinates6(:,4)+(25);
FinalCoordinates6(:,5)=FinalCoordinates6(:,5)+(58);
FinalCoordinates7(:,4)=FinalCoordinates7(:,4)+(44);
FinalCoordinates7(:,5)=FinalCoordinates7(:,5)+(44);
FinalCoordinates8(:,4)=FinalCoordinates8(:,4)+(12);
FinalCoordinates8(:,5)=FinalCoordinates8(:,5)+(60);
FinalCoordinates9(:,4)=FinalCoordinates9(:,4)+(14);
FinalCoordinates9(:,5)=FinalCoordinates9(:,5)+(13);
FinalCoordinates10(:,4)=FinalCoordinates10(:,4)+(45);
FinalCoordinates10(:,5)=FinalCoordinates10(:,5)+(63);
FinalCoordinates11(:,4)=FinalCoordinates11(:,4)+(30);
FinalCoordinates11(:,5)=FinalCoordinates11(:,5)+(31);
FinalCoordinates12(:,4)=FinalCoordinates12(:,4)+(15);
FinalCoordinates12(:,5)=FinalCoordinates12(:,5)+(10);
FinalCoordinates13(:,4)=FinalCoordinates13(:,4)+(38);
FinalCoordinates13(:,5)=FinalCoordinates13(:,5)+(30);
FinalCoordinates14(:,4)=FinalCoordinates14(:,4)+(10);
FinalCoordinates14(:,5)=FinalCoordinates14(:,5)+(38);
FinalCoordinates15(:,4)=FinalCoordinates15(:,4)+(23);
FinalCoordinates15(:,5)=FinalCoordinates15(:,5)+(30);
FinalCoordinates16(:,4)=FinalCoordinates16(:,4)+(33);
FinalCoordinates16(:,5)=FinalCoordinates16(:,5)+(35);
FinalCoordinates17(:,4)=FinalCoordinates17(:,4)+(13);
FinalCoordinates17(:,5)=FinalCoordinates17(:,5)+(53);
% % FinalCoordinates18(:,4)=FinalCoordinates18(:,4)+(27);
% % FinalCoordinates18(:,5)=FinalCoordinates18(:,5)+(26);
% % % [1 0.78 0.8]
j=1;
% % %
for i=3001:30:9060
    H=imread(strcat('E:\Final version-Movies(interfaces)\W3_unpinned_blurred\',num2str(j),'.tif'));
    imshow(H);
    hold on
%     scatter(((38-0.5)*(558/52)),((30-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
    f=find(FinalCoordinates1(:,3)==i);
    if isempty(f)==0
        scatter(((27-0.5)*(558/52)),((26-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates1(f,4)-0.5)*(558/52)),((FinalCoordinates1(f,5)-0.5)*(769/71)),'Color',[0.4 0.4 0.4],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates1(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates1(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[0.4 0.4 0.4],'LineWidth',2);
    end
    f=find(FinalCoordinates2(:,3)==i);
    if isempty(f)==0
        scatter(((28-0.5)*(558/52)),((49-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates2(f,4)-0.5)*(558/52)),((FinalCoordinates2(f,5)-0.5)*(769/71)),'Color',[0.7 0.7 0.7],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates2(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates2(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[0.7 0.7 0.7],'LineWidth',2);
    end
%     f=find(FinalCoordinates3(:,3)==i);
%     if isempty(f)==0
%         scatter((9*(558/52)),(53*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot((FinalCoordinates3(f,4)*(558/52)),(FinalCoordinates3(f,5)*(769/71)),'Color',[1 0.58 0.6],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates3(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates3(f(end),4:5);
%         plot((finalcoordinates(:,1)*(558/52)),(finalcoordinates(:,2)*(769/71)),'Color',[1 0.58 0.6],'LineWidth',2);
%     end
%     f=find(FinalCoordinates4(:,3)==i);
%     if isempty(f)==0
%         scatter((30*(558/52)),(20*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot((FinalCoordinates4(f,4)*(558/52)),(FinalCoordinates4(f,5)*(769/71)),'Color',[1 0.78 0.8],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates5(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates5(f(end),4:5);
%         plot((finalcoordinates(:,1)*(558/52)),(finalcoordinates(:,2)*(769/71)),'Color',[1 0.78 0.8],'LineWidth',2);
%     end
    f=find(FinalCoordinates5(:,3)==i);
    if isempty(f)==0
        scatter(((26-0.5)*(558/52)),((61-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates5(f,4)-0.5)*(558/52)),((FinalCoordinates5(f,5)-0.5)*(769/71)),'Color',[0.2 0.3 0.9],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates5(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates5(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[0.2 0.3 0.9],'LineWidth',2);
    end
    f=find(FinalCoordinates6(:,3)==i);
    if isempty(f)==0
        scatter(((25-0.5)*(558/52)),((58-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates6(f,4)-0.5)*(558/52)),((FinalCoordinates6(f,5)-0.5)*(769/71)),'Color',[0.9 0.9 0.9],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates6(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates6(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[0.9 0.9 0.9],'LineWidth',2);
    end
    f=find(FinalCoordinates7(:,3)==i);
    if isempty(f)==0
        scatter((44*(558/52)),(44*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot((FinalCoordinates7(f,4)*(558/52)),(FinalCoordinates7(f,5)*(769/71)),'Color',[0.8 0.05 0.05],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates7(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates7(f(end),4:5);
        plot((finalcoordinates(:,1)*(558/52)),(finalcoordinates(:,2)*(769/71)),'Color',[0.8 0.05 0.05],'LineWidth',2);
    end
%     f=find(FinalCoordinates8(:,3)==i);
%     if isempty(f)==0
%         scatter((12*(558/52)),(60*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot((FinalCoordinates8(f,4)*(558/52)),(FinalCoordinates8(f,5)*(558/52)),'Color',[0.7 0.7 1],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates8(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates8(f(end),4:5);
%         plot((finalcoordinates(:,1)*(558/52)),(finalcoordinates(:,2)*(558/52)),'Color',[0.7 0.7 1],'LineWidth',2);
%     end
    f=find(FinalCoordinates9(:,3)==i);
    if isempty(f)==0
        scatter(((14-0.5)*(558/52)),((13-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates9(f,4)-0.5)*(558/52)),((FinalCoordinates9(f,5)-0.5)*(769/71)),'Color',[0.3 0.5 0.8],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates9(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates9(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[0.3 0.5 0.8],'LineWidth',2);
    end
%     f=find(FinalCoordinates10(:,3)==i);
%     if isempty(f)==0
%         scatter((45*(558/52)),(63*(558/52)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot((FinalCoordinates10(f,4)*(769/71)),(FinalCoordinates10(f,5)*(558/52)),'Color',[0.8 0.5 0.5],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates10(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates10(f(end),4:5);
%         plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[0.8 0.5 0.5],'LineWidth',2);
%     end
    f=find(FinalCoordinates11(:,3)==i);
    if isempty(f)==0
        scatter(((30-0.5)*(558/52)),((31-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates11(f,4)-0.5)*(558/52)),((FinalCoordinates11(f,5)-0.5)*(769/71)),'Color',[0.8 0.5 0.5],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates11(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates11(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[0.8 0.5 0.5],'LineWidth',2);
    end
    f=find(FinalCoordinates12(:,3)==i);
    if isempty(f)==0
        scatter(((15-0.5)*(558/52)),((10-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates12(f,4)-0.5)*(558/52)),((FinalCoordinates12(f,5)-0.5)*(769/71)),'Color',[1 0.78 0.8],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates12(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates12(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[1 0.78 0.8],'LineWidth',2);
    end
    f=find(FinalCoordinates13(:,3)==i);
    if isempty(f)==0
        scatter(((38-0.5)*(558/52)),((30-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates13(f,4)-0.5)*(558/52)),((FinalCoordinates13(f,5)-0.5)*(769/71)),'Color',[0.7 0.7 1],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates13(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates13(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[0.7 0.7 1],'LineWidth',2);
    end
%     f=find(FinalCoordinates14(:,3)==i);
%     if isempty(f)==0
%         scatter(((10-0.5)*(558/52)),((38-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot(((FinalCoordinates14(f,4)-0.5)*(558/52)),((FinalCoordinates14(f,5)-0.5)*(769/71)),'Color',[0.7 0.7 1],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates14(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates14(f(end),4:5);
%         plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[0.7 0.7 1],'LineWidth',2);
%     end
    f=find(FinalCoordinates15(:,3)==i);
    if isempty(f)==0
        scatter(((23-0.5)*(558/52)),((30-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates15(f,4)-0.5)*(558/52)),((FinalCoordinates15(f,5)-0.5)*(769/71)),'Color',[0.2 0.4 0.6],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates15(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates15(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[0.2 0.4 0.6],'LineWidth',2);
    end
    f=find(FinalCoordinates16(:,3)==i);
    if isempty(f)==0
        scatter(((33-0.5)*(558/52)),((35-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates16(f,4)-0.5)*(558/52)),((FinalCoordinates16(f,5)-0.5)*(769/71)),'Color',[0.8 0.8 0.8],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates16(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates16(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[0.8 0.8 0.8],'LineWidth',2);
    end
    f=find(FinalCoordinates17(:,3)==i);
    if isempty(f)==0
        scatter(((13-0.5)*(558/52)),((53-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates17(f,4)-0.5)*(558/52)),((FinalCoordinates17(f,5)-0.5)*(769/71)),'Color',[1 0.58 0.6],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates17(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates17(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[1 0.58 0.6],'LineWidth',2);
    end
% %     f=find(FinalCoordinates18(:,3)==i);
% %     if isempty(f)==0
% %         scatter(((27-0.5)*(558/52)),((26-0.5)*(769/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
% %         plot(((FinalCoordinates18(f,4)-0.5)*(558/52)),((FinalCoordinates18(f,5)-0.5)*(769/71)),'Color',[0.8 0.8 0.8],'LineWidth',2);
% %         finalcoordinates(1,1:2)=FinalCoordinates18(f(1),4:5);
% %         finalcoordinates(2,1:2)=FinalCoordinates18(f(end),4:5);
% %         plot(((finalcoordinates(:,1)-0.5)*(558/52)),((finalcoordinates(:,2)-0.5)*(769/71)),'Color',[0.8 0.8 0.8],'LineWidth',2);
% %     end
    hold off
    h=gcf;
    saveas(h,strcat('E:\Final version-Movies(interfaces)\W3_unpinned_persistent\',num2str(i),'.tif'));
    j=j+1;
    close();
end