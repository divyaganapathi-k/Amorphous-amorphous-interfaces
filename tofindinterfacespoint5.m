% HH=mean(N2,3);
for i=1:10:max(FinalCoordinates1(:,5))
    f1=find(FinalCoordinates1(:,5)==i);
    f2=find(FinalCoordinates2(:,5)==i);
    f3=find(FinalCoordinates3(:,5)==i);
    f4=find(FinalCoordinates4(:,5)==i);
    f5=find(FinalCoordinates5(:,5)==i);
%     clims=[0.5 0.9];
%     imagesc(HH,clims);
    openfig('W23.fig');
    hold on
    scatter((14),(44),40,'r','filled');
    scatter((24),(37),40,'b','filled');
    scatter((36),(39),40,'g','filled');
    scatter((33),(23),40,'m','filled');
     scatter((20),(11),40,'k','filled');
    scatter(FinalCoordinates1(f1,2),FinalCoordinates1(f1,1),5,'r','filled');
    plot(FinalCoordinates1(f1,2),FinalCoordinates1(f1,1),'r','LineWidth',1.5);
    scatter(FinalCoordinates2(f2,2),FinalCoordinates2(f2,1),10,'b');
    plot(FinalCoordinates2(f2,2),FinalCoordinates2(f2,1),'b--','LineWidth',1.5);
    scatter(FinalCoordinates3(f3,2),FinalCoordinates3(f3,1),15,'g');
    plot(FinalCoordinates3(f3,2),FinalCoordinates3(f3,1),'g :','LineWidth',1.5);
    scatter(FinalCoordinates4(f4,2),FinalCoordinates4(f4,1),20,'m');
    plot(FinalCoordinates4(f4,2),FinalCoordinates4(f4,1),'m--o','LineWidth',1.5);
    scatter(FinalCoordinates5(f5,2),FinalCoordinates5(f5,1),20,'m');
    plot(FinalCoordinates5(f5,2),FinalCoordinates5(f5,1),'k--o','LineWidth',1.5);
    hold off
    filename=strcat('C:\Users\Divya\Desktop\codes\W2-coorinterface1sigmas4\',num2str(i),'.tif');
    h=gcf;
    saveas(h,filename);
    close
end