% [FinalCoordinates(:,4),FinalCoordinates(:,5)]=pol2cart(pi/2+FinalCoordinates(:,1),FinalCoordinates(:,2));
% % [FinalCoordinates2(:,4),FinalCoordinates2(:,5)]=pol2cart(pi/2+FinalCoordinates2(:,1),FinalCoordinates2(:,2));
% FinalCoordinates(:,4)=FinalCoordinates(:,4)+(47);
% FinalCoordinates(:,5)=FinalCoordinates(:,5)+(16);
for i=1:10:3030
    H=N3(:,:,i);
    colormap(cmap);
    set(gca,'TickDir','out')
    axis ij
    Hbar=imagesc(H);
%     Hbar1=imgaussfilt(Hbar,5);
    hold on
    f=find(FinalCoordinates(:,3)==i);
    scatter((FinalCoordinates(f,5)-0.5),(FinalCoordinates(f,4)-0.5),30,'MarkerEdgeColor','k','MarkerFaceColor','w','LineWidth',1.5);
    plot((FinalCoordinates(f,5)-0.5),(FinalCoordinates(f,4)-0.5),'-ok','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','w');
    h=gcf;
    saveas(h,strcat('E:\mosaics\W2\',num2str(i),'.tif'));
end