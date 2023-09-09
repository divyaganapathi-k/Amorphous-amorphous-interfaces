% R=[];
% R(:,1:4)=R2(:,1:4);
% R(:,5)=R1(:,3);
% clearvars -except R
n=max(R(:,4));
for i=1:1:n
    F=find(R(:,4)==i);
%     A=255*(ones(1160,1560,'uint8'));
%     imshow(A);
%     axis on
%     hold on
%     figure
    set(gcf,'Position',[0 0 1560 1160])
    axis([0 1560 0 1160])
    viscircles(R(F,1:2),(((R(F,3)).^(0.5))),'EdgeColor','k');
    set(gca,'YDir','reverse');
%     hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\W2-wall\',num2str(i),'.tif'));
    close all
end
