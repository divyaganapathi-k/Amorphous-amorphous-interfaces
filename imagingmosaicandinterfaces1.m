aa=2;
% FinalCoordinates1(:,2)=FinalCoordinates1(:,2)/21.7;
% FinalCoordinates2(:,2)=FinalCoordinates2(:,2)/21.7;
[FinalCoordinates1(:,7),FinalCoordinates1(:,8)]=pol2cart(pi/2+FinalCoordinates1(:,3),FinalCoordinates1(:,4));
% [FinalCoordinates2(:,4),FinalCoordinates2(:,5)]=pol2cart(pi/2-FinalCoordinates2(:,1),FinalCoordinates2(:,2));
% [FinalCoordinates3(:,4),FinalCoordinates3(:,5)]=pol2cart(pi/2+FinalCoordinates3(:,1),FinalCoordinates3(:,2));
% [FinalCoordinates4(:,4),FinalCoordinates4(:,5)]=pol2cart(pi/2+FinalCoordinates4(:,1),FinalCoordinates4(:,2));
% [FinalCoordinates5(:,4),FinalCoordinates5(:,5)]=pol2cart(pi/2+FinalCoordinates5(:,1),FinalCoordinates5(:,2));
% [FinalCoordinates6(:,4),FinalCoordinates6(:,5)]=pol2cart(pi/2+FinalCoordinates6(:,1),FinalCoordinates6(:,2));
FinalCoordinates1(:,7)=FinalCoordinates1(:,7)+(33);
FinalCoordinates1(:,8)=FinalCoordinates1(:,8)+(25);
% FinalCoordinates2(:,4)=FinalCoordinates2(:,4)+(14);
% FinalCoordinates2(:,5)=FinalCoordinates2(:,5)+(46);
% FinalCoordinates3(:,4)=FinalCoordinates3(:,4)+(16);
% FinalCoordinates3(:,5)=FinalCoordinates3(:,5)+(43);
% FinalCoordinates4(:,4)=FinalCoordinates4(:,4)+(33);
% FinalCoordinates4(:,5)=FinalCoordinates4(:,5)+(21);
% FinalCoordinates5(:,4)=FinalCoordinates5(:,4)+(33);
% FinalCoordinates5(:,5)=FinalCoordinates5(:,5)+(25);
% FinalCoordinates6(:,4)=FinalCoordinates6(:,4)+(17);
% FinalCoordinates6(:,5)=FinalCoordinates6(:,5)+(58);
% length(timet)
for i=1:1:1
    close all
    H=imread(strcat('E:\mosaics\W2-blur-2\',num2str(i),'.tif'));
    image(H);
    set(gca,'Ydir','Normal')
    hold on
    scatter(((33*(932/54))),((25*(740/72))),20,'y','filled');
%     scatter(((14*(932/44))-10),((46*(740/72))-5),20,'y','filled');
% %     scatter(((16*(932/44))-10),((43*(740/72))-5),10,[1 0 1],'filled');
% %     scatter(((33*(932/44))-10),((21*(740/72))-5),10,[0 0.2 0.8],'filled');
% %     scatter(((33*(932/44))-10),((25*(740/72))-5),10,[0 0.5 0],'filled');
% %     scatter(((17*(932/44))-10),((58*(740/72))-5),10,[0.2 0.8 0],'filled');
    f1=find(FinalCoordinates1(:,5)==i);
%     f2=find(FinalCoordinates2(:,3)==i);
%     f3=find(FinalCoordinates3(:,3)==i);
%     f4=find(FinalCoordinates4(:,3)==i);
%     f5=find(FinalCoordinates5(:,3)==i);
    scatter(((FinalCoordinates1(f1,7)*(932/54))),((FinalCoordinates1(f1,8)*(740/72))),5,'b');
    hold on
    plot(((FinalCoordinates1(f1,7)*(932/54))),((FinalCoordinates1(f1,8)*(740/72))),'b');
%     scatter(((FinalCoordinates2(f2,4)*(932/44))-10),((FinalCoordinates2(f2,5)*(740/72))-5),5,'g');
%     plot(((FinalCoordinates2(f2,4)*(932/44))-10),((FinalCoordinates2(f2,5)*(740/72))-5),'g');
%     scatter(((FinalCoordinates3(f3,4)*(932/44))-10),((FinalCoordinates3(f3,5)*(740/72))-5),5,[1 0 1]);
%     plot(((FinalCoordinates3(f3,4)*(932/44))-10),((FinalCoordinates3(f3,5)*(740/72))-5),'Color',[1 0 1]);
%     scatter(((FinalCoordinates4(f4,4)*(932/44))-10),((FinalCoordinates4(f4,5)*(740/72))-5),5,[0 0.2 0.8]);
%     plot(((FinalCoordinates4(f4,4)*(932/44))-10),((FinalCoordinates4(f4,5)*(740/72))-5),'Color',[0 0.2 0.8]);
%     scatter(((FinalCoordinates5(f5,4)*(932/44))-10),((FinalCoordinates5(f5,5)*(740/72))-5),5,[0 0.5 0]);
%     plot(((FinalCoordinates5(f5,4)*(932/44))-10),((FinalCoordinates5(f5,5)*(740/72))-5),'Color',[0 0.5 0]);
%     scatter(((FinalCoordinates6(f5,4)*(932/44))-10),((FinalCoordinates6(f5,5)*(740/72))-5),5,[0.2 0.8 0]);
%     plot(((FinalCoordinates6(f5,4)*(932/44))-10),((FinalCoordinates6(f5,5)*(740/72))-5),'Color',[0.2 0.8 0]);
%     h=gcf;
%     saveas(h,strcat('D:\Newdataanalysis\mosaic\blur+interface-W2-0.5\',num2str(i),'.tif'));
end