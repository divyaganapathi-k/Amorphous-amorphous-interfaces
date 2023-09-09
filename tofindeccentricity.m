% H=imread('C:\Users\Divya\Desktop\W2-mostmobile-0.2-1.tif');
H=imread('C:\Users\Divya\Desktop\W2-mostmobile-2.tif');
H1=im2bw(H);
stats1=regionprops('table',H1,'Centroid','MajorAxisLength','MinorAxisLength','Eccentricity','Orientation');
centroid=[];
centroid=stats1.Centroid;
E=stats1.Eccentricity;
% E=stats1.Orientation;
F=zeros(length(E),1);
f= E>=0.7;
F(f)=1;
f= E<=0.4;
F(f)=0;
f=find(E<0.7 & E>0.4);
F(f)=0.5;
% map=[1,0,0
%    0,0,1
%    0,1,1];
% scatter(most_mobile(:,2)*(477/44),most_mobile(:,1)*(781/72),0.2,'k');
% H2=imread('C:\Users\Divya\Desktop\W2-final-mostmobile-1-rgb.tif');
% HM2 = imcomplement(H2)
% imshow(H2);
% hold on
H2=imread('C:\Users\Divya\Desktop\W2-1.tif');
imshow(H2);
hold on
% set(gca,'Ydir','Normal')
% mostmobileplot=most_mobile(:,1:2)/21.7;
% scatter(most_mobile(:,2)*(477/44),most_mobile(:,1)*(781/72),5,'b','filled');
%  hold on
scatter(centroid(:,1),centroid(:,2),20,E,'filled');
colormap(jet);
% centroid=[];
% centroid=stats1.Centroid;
% Length=stats1.MajorAxisLength;
% Angle=stats1.Orientation;
% U=Length.*cos(Angle);
% V=Length.*sin(Angle);
% quiver(centroid(:,1),centroid(:,2),U,V,'Color','k','LineWidth',1.5,'MaxHeadSize',3,'AutoScaleFactor',50);
hold off