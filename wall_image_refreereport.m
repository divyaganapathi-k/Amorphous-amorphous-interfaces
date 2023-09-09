H=Np(:,:,9001);
imagesc(H);
colormap(cmap);
hold on
f=find(FinalCoordinates(:,3)==9001);
% plot(FinalCoordinates(f,2)+14,FinalCoordinates(f,1),1.5,'k');
plot(FinalCoordinates(f,2)+11,FinalCoordinates(f,1),'-ok',...
    'LineWidth',2,...
    'MarkerSize',5,...
    'MarkerEdgeColor','k',...
    'MarkerFaceColor','r')
set(gca,'TickDir','out');
axis equal
view([90 90])
cm=zeros(72,2);
for i=1:1:72
    f1=find(FinalCoordinates(:,1)==i);
    cm(i,1)=i;
    cm(i,2)=mean(FinalCoordinates(f1,2));
end
plot(cm(:,2)+11,cm(:,1),'w','LineWidth',1);
