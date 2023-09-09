j=1;
A=zeros(72,1);
for i=1:121:12080
    H=Np(:,:,i);
    H=horzcat(H,A);
%     f= H<0.15 & H>=0.1406;
%     H(f)=0.13;
    f= H<=0.67 & H>0.6562;
    H(f)=0.65;
    imagesc(H);
    colormap(cmap)
    set(gca,'TickDir','out');
    axis equal
    hold on
    f=find(FinalCoordinates(:,3)==i);
    plot(FinalCoordinates(f,2)+14,FinalCoordinates(f,1),'-ok','LineWidth',1.5,'MarkerSize',4.3,'MarkerEdgeColor','k','MarkerFaceColor','r');
    hold off
    h=gcf;
    saveas(h,strcat('E:\Final version-Movies(interfaces)\W2_wall_persistent\',num2str(j),'.tif'));
    close();
    if j==100
        break
    end
    j=j+1;
end