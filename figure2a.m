% H=N3(:,:,14001);
H=N2(:,:,14001);
H=H(:,6:end);
H=H';
imagesc(H);
colormap(cmap);
% set(gca,'TickDir','out')
% daspect([72 49 1])
% hold on
% H=imread('C:\Users\Divya\Desktop\W3-1.tif');
% imshow(H);
hold on
avginterface1=avginterface+5;
f=find(CoordinatesInterface(:,3)==14001);
f1=find(FinalCoordinates1(:,3)==14001);
B=FinalCoordinates1(f1,1:2);
B(:,2)=B(:,2)+5;
A=CoordinatesInterface(f,1:2);
A(:,2)=A(:,2)+5;
% scatter(A(:,1),A(:,2),30,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',1.5);
% plot(A(:,1),A(:,2),'-ok','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
% % scatter(y,avginterface1,30,'MarkerEdgeColor','r','MarkerFaceColor','y','LineWidth',1.5);
% plot(y,avginterface1,'r','LineWidth',1.5);
scatter(B(:,1)*(781/72),B(:,2)*(531/54),30,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',1.5);
plot(B(:,1)*(781/72),B(:,2)*(531/54),'-ok','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
% scatter(y*(781/72),avginterface1*(531/54),30,'MarkerEdgeColor','r','MarkerFaceColor','y','LineWidth',1.5);
plot(y*(781/72),avginterface1*(531/54),'r','LineWidth',1);
% scatter(B(:,1),B(:,2),30,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',1.5);
% plot(B(:,1),B(:,2),'-ok','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
% F=getframe(gca);
% imwrite(F.cdata,'test.tif');