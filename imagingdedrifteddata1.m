% R=[];
% R(:,1:4)=R2(:,1:4);
% R(:,5)=R1(:,3);
% clearvars -except R
n=max(R(:,3));
for i=1:1:2
    F=find(R(:,3)==i);
%     A=255*(ones(1160,1560,'uint8'));
%     figure
    set(gcf,'Position',[0 0 1560 1160])
    axis([0 1560 0 1160])
    hold on
%     imshow(A);
%     hold on
    viscircles(R(F,1:2),(((R(F,5)/(pi)).^(0.5))),'EdgeColor','k');
    set(gca,'YDir','reverse');
    hold off
%     hold off
%     h=gcf;
%     F = getframe(gcf);
%     [X, Map] = frame2im(F);
%     set(gcf,'PaperUnits','inches','PaperPosition',[0 0 1560 1160])
%     F=getframe(h);
%     [X,Map]=frame2im(F);
%     cdata=print('SameAxisLimits','-djpeg','-r0')
%     saveas(gcf,strcat('C:\Users\Divya\Desktop\codes\W2-dedrifted1\',num2str(i),'.tif'));
%     saveas(gcf,'test.tif');
    B=imread('1-1.tif');
% % %     figure
% %     imshow(X);
% %     B=im2bw(X,0.5);
% %     B=~B;
% %     B=imfill(B,'holes');
% %     B=~B;
% %     B=imresize(B,2.26);
    imshow(B);
    hold on
    f=find(R(:,3)==i);
    scatter(R(f,1),R(f,2),5,'r');
    hold off
   
%     fig=gcf;
% %     imwrite(B,strcat('C:\Users\Divya\Desktop\codes\W2-Wall\',num2str(i),'.tif'));
%     saveas(fig,strcat('C:\Users\Divya\Desktop\codes\W2-Wall1\',num2str(i),'.tif'));
end
