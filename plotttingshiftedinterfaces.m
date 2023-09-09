for i=1:20:(n-(2*t))
%     f1=find(coorinterface1(:,5)==i);
%     f2=find(coorinterface2(:,5)==i);
%     f3=find(coorinterface3(:,5)==i);
%     f4=find(coorinterface4(:,5)==i);
%     f5=find(coorinterface5(:,5)==i);
%     f6=find(coorinterface6(:,5)==i);
    f7=find(coorinterface7(:,5)==i);
    f8=find(coorinterface8(:,5)==i);
    f9=find(coorinterface9(:,5)==i);
    f10=find(FinalCoordinates(:,3)==i);
    [XX,YY]=pol2cart((2*pi-FinalCoordinates(f10,1)),(FinalCoordinates(f10,2)));
    XX=XX+x1;
    YY=YY+y1;
    scatter(coorinterface1(f1,1),coorinterface1(f1,2),20,'g','filled');
    xlim([000 1600])
    ylim([0 1200])
    axis ij
    hold on
%     plot(coorinterface1(f1,1),coorinterface1(f1,2),'g');
%     coorinterface11=[];
%     coorinterface11(1,1:2)=coorinterface1(f1(1),1:2);
%     coorinterface11(2,1:2)=coorinterface1(f1(end),1:2);
%     plot(coorinterface11(:,1),coorinterface11(:,2),'r');
%     scatter(coorinterface2(f2,1),coorinterface2(f2,2),20,'r','filled');
%     plot(coorinterface2(f2,1),coorinterface2(f2,2),'r');
%     scatter(coorinterface3(f3,1),coorinterface3(f3,2),20,'k','filled');
%     plot(coorinterface3(f3,1),coorinterface3(f3,2),'k');
%     scatter(coorinterface4(f4,1),coorinterface4(f4,2),20,'m','filled');
%     plot(coorinterface4(f4,1),coorinterface4(f4,2),'m');
%     scatter(coorinterface5(f5,1),coorinterface5(f5,2),20,'y','filled');
%     plot(coorinterface5(f5,1),coorinterface5(f5,2),'y');
%     scatter(coorinterface6(f6,1),coorinterface6(f6,2),20,'c','filled');
%     plot(coorinterface6(f6,1),coorinterface6(f6,2),'c');
     scatter(coorinterface7(f7,1),coorinterface7(f7,2),20,'k','filled');
     plot(coorinterface7(f7,1),coorinterface7(f7,2),'k');
     scatter(coorinterface8(f8,1),coorinterface8(f8,2),20,'y','filled');
     plot(coorinterface8(f8,1),coorinterface8(f8,2),'y');
     scatter(coorinterface9(f9,1),coorinterface9(f9,2),20,'m','filled');
     plot(coorinterface9(f9,1),coorinterface9(f9,2),'m');
    scatter(XX,YY,10,'b','filled');
    plot(XX,YY,'b');
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\overlapofshiftedinterfacesW43\',num2str(i),'.tif'));
    close all
end