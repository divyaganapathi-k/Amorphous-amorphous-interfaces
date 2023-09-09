for i=1:1:11
    scatter(x1,y1,10,'b','filled');
    xlim([0 1600])
    ylim([0 1200])
    axis ij
    hold on
    scatter((x1+addon),(y1),10,'r','filled');
    f=find(coorinterface(:,4)==i);
    f1=find(coorinterface2(:,4)==i);
    scatter(coorinterface(f,1),coorinterface(f,2),10,'g','filled');
    plot(coorinterface(f,1),coorinterface(f,2),'b','LineWidth',1);
    coor1=[];
    coor1(1,1:2)=coorinterface(f(1),1:2);
    coor1(2,1:2)=coorinterface(f(end),1:2);
    plot(coor1(:,1),coor1(:,2),'b','LineWidth',1);
    scatter(coorinterface2(f1,1),coorinterface2(f1,2),10,'g','filled');
    plot(coorinterface2(f1,1),coorinterface2(f1,2),'r','LineWidth',1);
    coor1=[];
    coor1(1,1:2)=coorinterface2(f1(1),1:2);
    coor1(2,1:2)=coorinterface2(f1(end),1:2);
    plot(coor1(:,1),coor1(:,2),'r','LineWidth',1);
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\W2-dispalcedinterfaces2/',num2str(i),'.tif'));
end