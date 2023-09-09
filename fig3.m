% H=imread('C:\Users\Divya\Desktop\W4-1.tif');
% imshow(H);
% hold on
% [FinalCoordinates1(:,4),FinalCoordinates1(:,5)]=pol2cart(pi/2+FinalCoordinates1(:,1),FinalCoordinates1(:,2));
% AverageInterface=[];
% theta=theta1';
% [AverageInterface(:,1),AverageInterface(:,2)]=pol2cart(pi/2+theta,Avgintface);
% FinalCoordinates1(:,4)=FinalCoordinates1(:,4)+(33);
% FinalCoordinates1(:,5)=FinalCoordinates1(:,5)+(25);
% AverageInterface(:,1)=AverageInterface(:,1)+33;
% AverageInterface(:,2)=AverageInterface(:,2)+25;
% f1=find(FinalCoordinates1(:,3)==1);
% scatter(FinalCoordinates1(f1,4)*(477/44),FinalCoordinates1(f1,5)*(781/72),10,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',0.5);
% scatter((33)*(477/44),(25)*(477/44),40,'MarkerEdgeColor','k','MarkerFaceColor','r','LineWidth',1.5);
% plot(FinalCoordinates1(f1,4)*(477/44),FinalCoordinates1(f1,5)*(781/72),'-ok','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
% plot(AverageInterface(:,1)*(477/44),AverageInterface(:,2)*(781/72),'r','LineWidth',1);
% hold off
% f= R(:,3)<=4332;
% R1=R(f,:);
% R1(:,1:2)=R1(:,1:2)/21.7;
f=find(R1(:,3)==5664);
A=R1(f,:);
f1=find(A(:,7)==0);
scatter(A(f1,2)*(477/44),A(f1,1)*(781/72),20,'c','filled');
hold on
f2=find(A(:,7)==2);
scatter(A(f2,2)*(477/44),A(f2,1)*(781/72),20,'m','filled');
% scatter(R1(:,2)*(477/44),R1(:,1)*(781/72),10,'b','filled');