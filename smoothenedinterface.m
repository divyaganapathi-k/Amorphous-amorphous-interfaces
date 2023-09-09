%to find the average interface by smoothening
for k=1:1:100
    X=[];
    Y=[];
    f=find(mostmoball(:,5)==k);
    k
    B=mostmoball(f,1:4);
%     C=smooth(B(:,3),(B(:,4)*(boxsiz)*(sigmas)),25);
    C=sgolayfilt((B(:,4)*(boxsiz)*(sigmas)),3,9);
    scatter(B(:,1),B(:,2),40,'r','filled');
    xlim([0 1600])
    ylim([0 1400])
    hold on
    plot(B(:,1),B(:,2),'k','LineWidth',2);
    mostmob1=[];
    mostmob1(1,1:2)=B(1,1:2);
    mostmob1(2,1:2)=B(end,1:2);
    plot(mostmob1(:,1),mostmob1(:,2),'k','LineWidth',2);
    [X,Y]=pol2cart(B(:,3),C(:,1));
    X=X+x1;
    Y=Y+y1;
    scatter(Y,X,'b','LineWidth',2);
    plot(Y,X,'k','LineWidth',2);
    mostmob2=[];
    mostmob2(1,1)=X(1,1);
    mostmob2(1,2)=Y(1,1);
    mostmob2(2,1)=X(end,1);
    mostmob2(2,2)=Y(end,1);
    plot(mostmob2(:,2),mostmob2(:,1),'k','LineWidth',2);
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\test\',num2str(k),'.tif'));
end