[FinalCoordinates1(:,4),FinalCoordinates1(:,5)]=pol2cart(pi/2-FinalCoordinates1(:,1),FinalCoordinates1(:,2));
[FinalCoordinates2(:,4),FinalCoordinates2(:,5)]=pol2cart(pi/2-FinalCoordinates2(:,1),FinalCoordinates2(:,2));
% [FinalCoordinates3(:,4),FinalCoordinates3(:,5)]=pol2cart(pi/2+FinalCoordinates3(:,1),FinalCoordinates3(:,2));
% [FinalCoordinates4(:,4),FinalCoordinates4(:,5)]=pol2cart(pi/2+FinalCoordinates4(:,1),FinalCoordinates4(:,2));
% [FinalCoordinates5(:,4),FinalCoordinates5(:,5)]=pol2cart(pi/2+FinalCoordinates5(:,1),FinalCoordinates5(:,2));
% [FinalCoordinates6(:,4),FinalCoordinates6(:,5)]=pol2cart(pi/2+FinalCoordinates6(:,1),FinalCoordinates6(:,2));
FinalCoordinates1(:,4)=FinalCoordinates1(:,4)+((17));
FinalCoordinates1(:,5)=FinalCoordinates1(:,5)+((53));
FinalCoordinates2(:,4)=FinalCoordinates2(:,4)+((29));
FinalCoordinates2(:,5)=FinalCoordinates2(:,5)+((47));
% FinalCoordinates3(:,4)=FinalCoordinates3(:,4)+(16);
% FinalCoordinates3(:,5)=FinalCoordinates3(:,5)+(43);
% FinalCoordinates4(:,4)=FinalCoordinates4(:,4)+(33);
% FinalCoordinates4(:,5)=FinalCoordinates4(:,5)+(21);
% FinalCoordinates5(:,4)=FinalCoordinates5(:,4)+(33);
% FinalCoordinates5(:,5)=FinalCoordinates5(:,5)+(25);
% FinalCoordinates6(:,4)=FinalCoordinates6(:,4)+(17);
% FinalCoordinates6(:,5)=FinalCoordinates6(:,5)+(58);
for i=1:1:100
    close all
%     H=imread(strcat('D:\Newdataanalysis\mosaic\blur-W2-1.5-1\',num2str(i),'.tif'));
    H=imread(strcat('E:\1boxes\W2-blur-0.5-0.4\',num2str(i),'.tif'));
    image(H);
    hold on
%     axis ij
    scatter(((17*(931/88))-10),((53*(746/144))-5),10,[0 0 1],'filled');
    scatter(((29*(931/88))-10),((47*(746/144))-5),10,[0 0.5 0.5],'filled');
%     scatter(((16*(933/44))-10),((43*(740/72))-5),10,[1 0 1],'filled');
%     scatter(((33*(933/44))-10),((21*(740/72))-5),10,[0 0.2 0.8],'filled');
%     scatter(((33*(933/44))-10),((25*(740/72))-5),10,[0 0.5 0],'filled');
%     scatter(((17*(933/44))-10),((58*(740/72))-5),10,[0.2 0.8 0],'filled');
    f1=find(FinalCoordinates1(:,3)==i);
    f2=find(FinalCoordinates2(:,3)==i);
%     f3=find(FinalCoordinates3(:,3)==i);
%     f4=find(FinalCoordinates4(:,3)==i);
%     f5=find(FinalCoordinates5(:,3)==i);
    scatter(((FinalCoordinates1(f1,4)*(931/88))-5),((FinalCoordinates1(f1,5)*(746/144))-2),5,[0 0 1]);
    plot(((FinalCoordinates1(f1,4)*(931/88))-5),((FinalCoordinates1(f1,5)*(746/144))-2),'Color',[0 0 1]);
    scatter(((FinalCoordinates2(f2,4)*(931/88))-5),((FinalCoordinates2(f2,5)*(746/144))-2),5,[0 0.5 0.5]);
    plot(((FinalCoordinates2(f2,4)*(931/88))-5),((FinalCoordinates2(f2,5)*(746/144))-2),'Color',[0 0.5 0.5]);
%     scatter(((FinalCoordinates3(f3,4)*(933/44))-10),((FinalCoordinates3(f3,5)*(740/72))-5),5,[1 0 1]);
%     plot(((FinalCoordinates3(f3,4)*(933/44))-10),((FinalCoordinates3(f3,5)*(740/72))-5),'Color',[1 0 1]);
%     scatter(((FinalCoordinates4(f4,4)*(933/44))-10),((FinalCoordinates4(f4,5)*(740/72))-5),5,[0 0.2 0.8]);
%     plot(((FinalCoordinates4(f4,4)*(933/44))-10),((FinalCoordinates4(f4,5)*(740/72))-5),'Color',[0 0.2 0.8]);
%     scatter(((FinalCoordinates5(f5,4)*(933/44))-10),((FinalCoordinates5(f5,5)*(740/72))-5),5,[0 0.5 0]);
%     plot(((FinalCoordinates5(f5,4)*(933/44))-10),((FinalCoordinates5(f5,5)*(740/72))-5),'Color',[0 0.5 0]);
%     scatter(((FinalCoordinates6(f5,4)*(933/44))-10),((FinalCoordinates6(f5,5)*(740/72))-5),5,[0.2 0.8 0]);
%     plot(((FinalCoordinates6(f5,4)*(933/44))-10),((FinalCoordinates6(f5,5)*(740/72))-5),'Color',[0.2 0.8 0]);
    h=gcf;
%     saveas(h,strcat('D:\Newdataanalysis\mosaic\blur+interface-W2-6\',num2str(i),'.tif'));
    saveas(h,strcat('E:\1boxes\W2-blur-0.5-0.4-interfaces\',num2str(i),'.tif'));
end