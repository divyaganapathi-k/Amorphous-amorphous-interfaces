% f=unique(mostmobile(:,5));
% for i=1:1:length(f)
%     f1=find(mostmobile(:,5)==f(i));
%     P=mostmobile(f1,2:3);
%     axis([0 1560 0 1160])
%     hold on
%     scatter(P(:,1),P(:,2),100,'k','filled');
%     set(gca,'Ydir','reverse')
%     set(gca,'TickDir','out')
%     hold off
%     h=gcf;
%     saveas(h,strcat('C:\Users\Divya\Desktop\mostmobile\W2\',num2str(i),'.tif'));
%     close
% end
centroid_final=[];
eccen=[];
orient=[];
majoraxis=[];
for i=1:1:1903
    H=imread(strcat('C:\Users\Divya\Desktop\mostmobile\W2-transposeinvert\',num2str(i),'.tif'));
    H1=im2bw(H);
    stats1=regionprops('table',H1,'Centroid','MajorAxisLength','MinorAxisLength','Eccentricity','Orientation');
    centroid=[];
    centroid=stats1.Centroid;
    E=stats1.Eccentricity;
    F=stats1.Orientation;
    G=stats1.MajorAxisLength;
    centroid_final=vertcat(centroid_final,centroid);
    eccen=vertcat(eccen,E);
    orient=vertcat(orient,F);
    majoraxis=vertcat(majoraxis,G);
end
% U=majoraxis.*cos(eccen);
% V=majoraxis.*sin(eccen);
% quiver(centroid_final(:,1),centroid_final(:,2),U,V,'Color','k','LineWidth',1.5,'MaxHeadSize',3,'AutoScaleFactor',50);
f=find(centroid_final(:,1)~=390.5);
centroid1=centroid_final(f,:);
eccen1=eccen(f,:);
majoraxis1=majoraxis(f,:);
orient1=orient(f,:);
% U=majoraxis1.*cos(orient1);
% V=majoraxis1.*sin(orient1);
quiver(centroid1(:,1),centroid1(:,2),U,V,'Color','k','LineWidth',1.5,'MaxHeadSize',3,'AutoScaleFactor',1);
% scatter(centroid1(:,1),centroid1(:,2),50,eccen1,'filled');