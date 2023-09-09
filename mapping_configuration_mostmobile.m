% clearvars -except mostmobile N3 cmap
% f= mostmobile(:,1)>0 & mostmobile(:,2)>0;
% mostmobile1=mostmobile(f,1:4);
% t=5250;
% H=N3(:,:,2626);
% imagesc(H);
% % set(gca,'YDir','normal')
% set(gca,'TickDir','out')
% colormap(cmap);
% f=find(mostmobile1(:,3)>=1 & mostmobile1(:,3)<=t);
H=imread('C:\Users\Divya\Desktop\W2-secondtaua_1.tif');
image(H);
set(gca,'YDir','normal')
set(gca,'TickDir','out')
hold on
scatter(((1056/(1171.8))*mostmobile3(:,2)),((531/(1562.4))*mostmobile3(:,1)),10,'b');