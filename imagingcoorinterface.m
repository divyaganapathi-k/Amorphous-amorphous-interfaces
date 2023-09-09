% [coorinterface1(:,7),coorinterface1(:,8)]=pol2cart(pi/2+coorinterface1(:,3),coorinterface1(:,4));
% coorinterface1(:,7)=coorinterface1(:,7)+(33);
% coorinterface1(:,8)=coorinterface1(:,8)+(25);
% H=N2(:,:,1);
% H=H(:,1:44);
% imagesc(H);
% colormap(cmap);
% set(gca,'TickDir','out')
% h=gcf;
% saveas(h,'C:\Users\Divya\Desktop\test.tif');
H=imread('C:\Users\Divya\Desktop\test-1.tif');
imshow(H);
hold on
AverageInterface=[];
theta=theta1';
[AverageInterface(:,1),AverageInterface(:,2)]=pol2cart(pi/2+theta,Avgintface);
AverageInterface(:,1)=AverageInterface(:,1)+33;
AverageInterface(:,2)=AverageInterface(:,2)+25;
f1=find(coorinterface1(:,5)==1);
scatter(coorinterface1(f1,7)*(477/44),coorinterface1(f1,8)*(781/72),10,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
scatter((33)*(477/44),(25)*(477/44),40,'MarkerEdgeColor','k','MarkerFaceColor','r','LineWidth',1.5);
plot(coorinterface1(f1,7)*(477/44),coorinterface1(f1,8)*(781/72),'-ok','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
plot(AverageInterface(:,1)*(477/44),AverageInterface(:,2)*(781/72),'r','LineWidth',1);
hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% H=N2(:,:,1);
% H=H(:,1:44);
% imagesc(H);
% colormap(cmap);
% set(gca,'TickDir','out')
% daspect([44 72 1])
% hold on
% [coorinterface1(:,7),coorinterface1(:,8)]=pol2cart(pi/2+coorinterface1(:,3),coorinterface1(:,4));
% AverageInterface=[];
% theta=theta1';
% [AverageInterface(:,1),AverageInterface(:,2)]=pol2cart(pi/2+theta,Avgintface);
% coorinterface1(:,7)=coorinterface1(:,7)+(33);
% coorinterface1(:,8)=coorinterface1(:,8)+(25);
% AverageInterface(:,1)=AverageInterface(:,1)+33;
% AverageInterface(:,2)=AverageInterface(:,2)+25;
% f1=find(coorinterface1(:,5)==1);
% scatter(coorinterface1(f1,7),coorinterface1(f1,8),10,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
% scatter((33),(25),40,'MarkerEdgeColor','k','MarkerFaceColor','r','LineWidth',1.5);
% plot(coorinterface1(f1,7),coorinterface1(f1,8),'-ok','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
% plot(AverageInterface(:,1),AverageInterface(:,2),'r','LineWidth',1);
% hold off