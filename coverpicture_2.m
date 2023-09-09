A=imread('C:\Users\Divya\Desktop\0T_1-3_1.tif');
A=rot90(A);
imshow(A);
hold on
H=Np(:,:,1);
% H=H';
H1=imresize(H,21.7);
% H1=flipud(H1);
imagesc(H1, 'AlphaData', .5);
colormap(cmap);
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
% [FinalCoordinates18(:,4),FinalCoordinates18(:,5)]=pol2cart(pi/2+FinalCoordinates18(:,1),FinalCoordinates18(:,2));
FinalCoordinates1(:,4)=FinalCoordinates1(:,4)+(29);
FinalCoordinates1(:,5)=FinalCoordinates1(:,5)+(47);
FinalCoordinates2(:,4)=FinalCoordinates2(:,4)+(14);
FinalCoordinates2(:,5)=FinalCoordinates2(:,5)+(26);
FinalCoordinates3(:,4)=FinalCoordinates3(:,4)+(14);
FinalCoordinates3(:,5)=FinalCoordinates3(:,5)+(43);
% FinalCoordinates4(:,4)=FinalCoordinates4(:,4)+(30);
% FinalCoordinates4(:,5)=FinalCoordinates4(:,5)+(20);
FinalCoordinates5(:,4)=FinalCoordinates5(:,4)+(21);
FinalCoordinates5(:,5)=FinalCoordinates5(:,5)+(23);
FinalCoordinates6(:,4)=FinalCoordinates6(:,4)+(34);
FinalCoordinates6(:,5)=FinalCoordinates6(:,5)+(28);
FinalCoordinates7(:,4)=FinalCoordinates7(:,4)+(10);
FinalCoordinates7(:,5)=FinalCoordinates7(:,5)+(57);
FinalCoordinates8(:,4)=FinalCoordinates8(:,4)+(30);
FinalCoordinates8(:,5)=FinalCoordinates8(:,5)+(63);
FinalCoordinates9(:,4)=FinalCoordinates9(:,4)+(40);
FinalCoordinates9(:,5)=FinalCoordinates9(:,5)+(56);
FinalCoordinates10(:,4)=FinalCoordinates10(:,4)+(5);
FinalCoordinates10(:,5)=FinalCoordinates10(:,5)+(14);
FinalCoordinates11(:,4)=FinalCoordinates11(:,4)+(15);
FinalCoordinates11(:,5)=FinalCoordinates11(:,5)+(44);
FinalCoordinates12(:,4)=FinalCoordinates12(:,4)+(33);
FinalCoordinates12(:,5)=FinalCoordinates12(:,5)+(21);
FinalCoordinates13(:,4)=FinalCoordinates13(:,4)+(32);
FinalCoordinates13(:,5)=FinalCoordinates13(:,5)+(10);
FinalCoordinates14(:,4)=FinalCoordinates14(:,4)+(21);
FinalCoordinates14(:,5)=FinalCoordinates14(:,5)+(35);
FinalCoordinates15(:,4)=FinalCoordinates15(:,4)+(6);
FinalCoordinates15(:,5)=FinalCoordinates15(:,5)+(34);
FinalCoordinates16(:,4)=FinalCoordinates16(:,4)+(27);
FinalCoordinates16(:,5)=FinalCoordinates16(:,5)+(9);
FinalCoordinates17(:,4)=FinalCoordinates17(:,4)+(34);
FinalCoordinates17(:,5)=FinalCoordinates17(:,5)+(26);
% FinalCoordinates18(:,4)=FinalCoordinates18(:,4)+(27);
% FinalCoordinates18(:,5)=FinalCoordinates18(:,5)+(26);
% % [1 0.78 0.8]
j=1;
% %
for i=1:30:3030
%     H=imread(strcat('E:\Final version-Movies(interfaces)\W2_unpinned_blurred\',num2str(j),'.tif'));
%     imshow(H);
%     hold on
    f=find(FinalCoordinates1(:,3)==i);
    if isempty(f)==0
%         scatter(((29-0.5)*(473/44)),((47-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot1=plot(((FinalCoordinates1(f,4)-0.5)*(21.7)),((FinalCoordinates1(f,5)-0.5)*(21.7)),'Color',[0.4 0.4 0.4],'LineWidth',2);
%         plot1.Color(4) = 0.5;
        finalcoordinates(1,1:2)=FinalCoordinates1(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates1(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(21.7)),((finalcoordinates(:,2)-0.5)*(21.7)),'Color',[0.4 0.4 0.4],'LineWidth',2);
    end
    f=find(FinalCoordinates2(:,3)==i);
    if isempty(f)==0
%         scatter(((14-0.5)*(473/44)),((26-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates2(f,4)-0.5)*(21.7)),((FinalCoordinates2(f,5)-0.5)*(21.7)),'Color',[0.7 0.7 0.7],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates2(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates2(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(21.7)),((finalcoordinates(:,2)-0.5)*(21.7)),'Color',[0.7 0.7 0.7],'LineWidth',2);
    end
    f=find(FinalCoordinates3(:,3)==i);
    if isempty(f)==0
%         scatter((14*(473/44)),(43*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot((FinalCoordinates3(f,4)*(21.7)),(FinalCoordinates3(f,5)*(21.7)),'Color',[1 0.58 0.6],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates3(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates3(f(end),4:5);
        plot((finalcoordinates(:,1)*(21.7)),(finalcoordinates(:,2)*(21.7)),'Color',[1 0.58 0.6],'LineWidth',2);
    end
%     f=find(FinalCoordinates4(:,3)==i);
%     if isempty(f)==0
%         scatter((30*(473/44)),(20*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot((FinalCoordinates4(f,4)*(473/44)),(FinalCoordinates4(f,5)*(765/71)),'Color',[1 0.78 0.8],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates5(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates5(f(end),4:5);
%         plot((finalcoordinates(:,1)*(473/44)),(finalcoordinates(:,2)*(765/71)),'Color',[1 0.78 0.8],'LineWidth',2);
%     end
    f=find(FinalCoordinates5(:,3)==i);
    if isempty(f)==0
%         scatter(((21-0.5)*(473/44)),((23-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates5(f,4)-0.5)*(21.7)),((FinalCoordinates5(f,5)-0.5)*(21.7)),'Color',[0.2 0.3 0.9],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates5(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates5(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(21.7)),((finalcoordinates(:,2)-0.5)*(21.7)),'Color',[0.2 0.3 0.9],'LineWidth',2);
    end
    f=find(FinalCoordinates6(:,3)==i);
    if isempty(f)==0
%         scatter(((34-0.5)*(473/44)),((28-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates6(f,4)-0.5)*(21.7)),((FinalCoordinates6(f,5)-0.5)*(21.7)),'Color',[0.9 0.9 0.9],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates6(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates6(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(21.7)),((finalcoordinates(:,2)-0.5)*(21.7)),'Color',[0.9 0.9 0.9],'LineWidth',2);
    end
    f=find(FinalCoordinates7(:,3)==i);
    if isempty(f)==0
%         scatter((10*(473/44)),(57*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot((FinalCoordinates7(f,4)*(21.7)),(FinalCoordinates7(f,5)*(21.7)),'Color',[0.8 0.05 0.05],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates7(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates7(f(end),4:5);
        plot((finalcoordinates(:,1)*(21.7)),(finalcoordinates(:,2)*(21.7)),'Color',[0.8 0.05 0.05],'LineWidth',2);
    end
    f=find(FinalCoordinates8(:,3)==i);
    if isempty(f)==0
%         scatter((30*(473/44)),(63*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot((FinalCoordinates8(f,4)*(21.7)),(FinalCoordinates8(f,5)*(21.7)),'Color',[0.7 0.7 1],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates8(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates8(f(end),4:5);
        plot((finalcoordinates(:,1)*(21.7)),(finalcoordinates(:,2)*(21.7)),'Color',[0.7 0.7 1],'LineWidth',2);
    end
%     f=find(FinalCoordinates9(:,3)==i);
%     if isempty(f)==0
%         scatter(((40-0.5)*(473/44)),((56-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot(((FinalCoordinates9(f,4)-0.5)*(473/44)),((FinalCoordinates9(f,5)-0.5)*(765/71)),'Color',[0.3 0.5 0.8],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates9(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates9(f(end),4:5);
%         plot(((finalcoordinates(:,1)-0.5)*(473/44)),((finalcoordinates(:,2)-0.5)*(765/71)),'Color',[0.3 0.5 0.8],'LineWidth',2);
%     end
    f=find(FinalCoordinates10(:,3)==i);
    if isempty(f)==0
%         scatter((5*(473/44)),(14*(473/44)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot((FinalCoordinates10(f,4)*(21.7)),(FinalCoordinates10(f,5)*(21.7)),'Color',[0.8 0.5 0.5],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates10(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates10(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(21.7)),((finalcoordinates(:,2)-0.5)*(21.7)),'Color',[0.8 0.5 0.5],'LineWidth',2);
    end
    f=find(FinalCoordinates11(:,3)==i);
    if isempty(f)==0
%         scatter(((15-0.5)*(473/44)),((44-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates11(f,4)-0.5)*(21.7)),((FinalCoordinates11(f,5)-0.5)*(21.7)),'Color',[0.3 0.5 0.8],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates11(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates11(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(21.7)),((finalcoordinates(:,2)-0.5)*(21.7)),'Color',[0.3 0.5 0.8],'LineWidth',2);
    end
%     f=find(FinalCoordinates12(:,3)==i);
%     if isempty(f)==0
%         scatter(((33-0.5)*(473/44)),((21-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot(((FinalCoordinates12(f,4)-0.5)*(473/44)),((FinalCoordinates12(f,5)-0.5)*(765/71)),'Color',[1 0.78 0.8],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates12(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates12(f(end),4:5);
%         plot(((finalcoordinates(:,1)-0.5)*(473/44)),((finalcoordinates(:,2)-0.5)*(765/71)),'Color',[1 0.78 0.8],'LineWidth',2);
%     end
%     f=find(FinalCoordinates13(:,3)==i);
%     if isempty(f)==0
%         scatter(((32-0.5)*(473/44)),((10-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot(((FinalCoordinates13(f,4)-0.5)*(473/44)),((FinalCoordinates13(f,5)-0.5)*(765/71)),'Color',[0.8 0.05 0.05],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates13(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates13(f(end),4:5);
%         plot(((finalcoordinates(:,1)-0.5)*(473/44)),((finalcoordinates(:,2)-0.5)*(765/71)),'Color',[0.8 0.05 0.05],'LineWidth',2);
%     end
    f=find(FinalCoordinates14(:,3)==i);
    if isempty(f)==0
%         scatter(((21-0.5)*(473/44)),((35-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates14(f,4)-0.5)*(21.7)),((FinalCoordinates14(f,5)-0.5)*(21.7)),'Color',[0.7 0.7 1],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates14(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates14(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(21.7)),((finalcoordinates(:,2)-0.5)*(21.7)),'Color',[0.7 0.7 1],'LineWidth',2);
    end
    f=find(FinalCoordinates15(:,3)==i);
    if isempty(f)==0
%         scatter(((6-0.5)*(473/44)),((34-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates15(f,4)-0.5)*(21.7)),((FinalCoordinates15(f,5)-0.5)*(21.7)),'Color',[0.2 0.4 0.6],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates15(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates15(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(21.7)),((finalcoordinates(:,2)-0.5)*(21.7)),'Color',[0.2 0.4 0.6],'LineWidth',2);
    end
    f=find(FinalCoordinates16(:,3)==i);
    if isempty(f)==0
%         scatter(((27-0.5)*(473/44)),((9-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates16(f,4)-0.5)*(21.7)),((FinalCoordinates16(f,5)-0.5)*(21.7)),'Color',[0.8 0.8 0.8],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates16(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates16(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(21.7)),((finalcoordinates(:,2)-0.5)*(21.7)),'Color',[0.8 0.8 0.8],'LineWidth',2);
    end
    f=find(FinalCoordinates17(:,3)==i);
    if isempty(f)==0
%         scatter(((34-0.5)*(473/44)),((26-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
        plot(((FinalCoordinates17(f,4)-0.5)*(21.7)),((FinalCoordinates17(f,5)-0.5)*(21.7)),'Color',[1 0.8 0.78],'LineWidth',2);
        finalcoordinates(1,1:2)=FinalCoordinates17(f(1),4:5);
        finalcoordinates(2,1:2)=FinalCoordinates17(f(end),4:5);
        plot(((finalcoordinates(:,1)-0.5)*(21.7)),((finalcoordinates(:,2)-0.5)*(21.7)),'Color',[1 0.78 0.8],'LineWidth',2);
    end
%     f=find(FinalCoordinates18(:,3)==i);
%     if isempty(f)==0
%         scatter(((27-0.5)*(473/44)),((26-0.5)*(765/71)),10,'MarkerEdgeColor',[1 1 1],'MarkerFaceColor',[1 0 0],'LineWidth',1);
%         plot(((FinalCoordinates18(f,4)-0.5)*(473/44)),((FinalCoordinates18(f,5)-0.5)*(765/71)),'Color',[0.8 0.8 0.8],'LineWidth',2);
%         finalcoordinates(1,1:2)=FinalCoordinates18(f(1),4:5);
%         finalcoordinates(2,1:2)=FinalCoordinates18(f(end),4:5);
%         plot(((finalcoordinates(:,1)-0.5)*(473/44)),((finalcoordinates(:,2)-0.5)*(765/71)),'Color',[0.8 0.8 0.8],'LineWidth',2);
%     end
    hold off
    h=gcf;
%     saveas(h,strcat('E:\Final version-Movies(interfaces)\W2_unpinned_persistent\',num2str(i),'.tif'));
    j=j+1;
    close();
end