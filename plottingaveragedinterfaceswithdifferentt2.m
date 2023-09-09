[totalimages,ia,ic]=unique(FinalCoordinates2(:,3));
totalimages1=FinalCoordinates2(ia,3);
for i=1:1:length(totalimages)
%     f1=find(FinalCoordinates1(:,3)==i);
    f2=find(FinalCoordinates2(:,3)==totalimages1(i));
    f3=find(FinalCoordinates3(:,3)==totalimages1(i));
    f4=find(FinalCoordinates4(:,3)==totalimages1(i));
    f5=find(FinalCoordinates5(:,3)==totalimages1(i));
    f6=find(FinalCoordinates6(:,3)==totalimages1(i));
    f7=find(FinalCoordinates7(:,3)==totalimages1(i));
    cartcoor1=[]; cartcoor2=[]; cartcoor3=[]; cartcoor4=[]; cartcoor5=[]; cartcoor6=[]; cartcoor7=[];
%     [cartcoor1(:,1),cartcoor1(:,2)]=pol2cart(FinalCoordinates1(f1,1),FinalCoordinates1(f1,2));
    [cartcoor2(:,1),cartcoor2(:,2)]=pol2cart(FinalCoordinates2(f2,1),FinalCoordinates2(f2,2));
    [cartcoor3(:,1),cartcoor3(:,2)]=pol2cart(FinalCoordinates3(f3,1),FinalCoordinates3(f3,2));
    [cartcoor4(:,1),cartcoor4(:,2)]=pol2cart(FinalCoordinates4(f4,1),FinalCoordinates4(f4,2));
    [cartcoor5(:,1),cartcoor5(:,2)]=pol2cart(FinalCoordinates5(f5,1),FinalCoordinates5(f5,2));
    [cartcoor6(:,1),cartcoor6(:,2)]=pol2cart(FinalCoordinates6(f6,1),FinalCoordinates6(f6,2));
    [cartcoor7(:,1),cartcoor7(:,2)]=pol2cart(FinalCoordinates7(f7,1),FinalCoordinates7(f7,2));
%     cartcoor1(:,3)=1;
    cartcoor2(:,3)=2;
    cartcoor3(:,3)=3;
    cartcoor4(:,3)=4;
    cartcoor5(:,3)=5;
    cartcoor6(:,3)=6;
    cartcoor7(:,3)=7;
%     cartcoor1(:,1)=cartcoor1(:,1)+x1;
%     cartcoor1(:,2)=cartcoor1(:,2)+y1;
    cartcoor2(:,1)=cartcoor2(:,1)+x1;
    cartcoor2(:,2)=cartcoor2(:,2)+y1;
    cartcoor3(:,1)=cartcoor3(:,1)+x1;
    cartcoor3(:,2)=cartcoor3(:,2)+y1;
    cartcoor4(:,1)=cartcoor4(:,1)+x1;
    cartcoor4(:,2)=cartcoor4(:,2)+y1;
    cartcoor5(:,1)=cartcoor5(:,1)+x1;
    cartcoor5(:,2)=cartcoor5(:,2)+y1;
    cartcoor6(:,1)=cartcoor6(:,1)+x1;
    cartcoor6(:,2)=cartcoor6(:,2)+y1;
    cartcoor7(:,1)=cartcoor7(:,1)+x1;
    cartcoor7(:,2)=cartcoor7(:,2)+y1;
%     scatter(cartcoor1(:,1),cartcoor1(:,2),10,cartcoor1(:,3),'o');
%     colormap jet
    map = [0, 0, 0
            1, 0, 0
            0, 1, 0
            0, 0, 1
            0, 1, 1
            1, 0, 1
            1, 1, 0];
        colormap(map)
        colorbar
    xlim([800 1600])
    ylim([00 1000])
    axis ij
    hold on
%     plot(cartcoor1(:,1),cartcoor1(:,2),'Color',[0,0,0],'LineWidth',2);
%     scatter(cartcoor2(:,1),cartcoor2(:,2),10,cartcoor2(:,3),'+');
    plot(cartcoor2(:,1),cartcoor2(:,2),'Color',[1,0,0],'LineWidth',2);
    scatter(cartcoor3(:,1),cartcoor3(:,2),10,cartcoor3(:,3),'s');
    plot(cartcoor3(:,1),cartcoor3(:,2),'Color',[0,1,0],'LineWidth',2);
    scatter(cartcoor4(:,1),cartcoor4(:,2),10,cartcoor4(:,3),'d');
    plot(cartcoor4(:,1),cartcoor4(:,2),'Color',[0,0,1],'LineWidth',2);
    scatter(cartcoor5(:,1),cartcoor5(:,2),10,cartcoor5(:,3),'x');
    plot(cartcoor5(:,1),cartcoor5(:,2),'Color',[0,1,1],'LineWidth',2);
    scatter(cartcoor6(:,1),cartcoor6(:,2),10,cartcoor6(:,3),'*');
    plot(cartcoor6(:,1),cartcoor6(:,2),'Color',[1,0,1],'LineWidth',2);
    scatter(cartcoor7(:,1),cartcoor7(:,2),10,cartcoor7(:,3),'p');
    plot(cartcoor7(:,1),cartcoor7(:,2),'Color',[1,1,0],'LineWidth',2);
    colorbar
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\W7-intefaceswithdifferentt\',num2str(i),'.tif'));
    close all
end