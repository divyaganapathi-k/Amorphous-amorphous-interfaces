% R=[];
% R(:,1:4)=R2(:,1:4);
% R(:,5)=R1(:,3);
% clearvars -except R
% n=max(R(:,3));
for i=4048:1:25000
    F=find(H1(:,3)==i);
%     F=find(pos_lst(:,5)==i);
%     A=255*(ones(1160,1560,'uint8'));
%     imshow(A);
    set(gcf,'Position',[0 0 1000 1160])
    axis([0 1000 0 1160])
    viscircles(H1(F,1:2),((0.22)*(H1(F,5))),'EdgeColor','k');
%     viscircles(pos_lst(F,1:2),((0.35)*(pos_lst(F,4))),'EdgeColor','k');
    hold on
    set(gca,'YDir','reverse');
    hold off
    saveas(gcf,'test.tif');
    close
    B=imread('test.tif');
    B=im2bw(B,0.5);
    B=~B;
    B=imfill(B,'holes');
    B=~B;
    imshow(B);
    saveas(gcf,strcat('C:\Users\Divya\Desktop\codes\D15-dedrifted2\',num2str(i),'.tif'));
%     imwrite(B,strcat('C:\Users\Divya\Desktop\codes\W4\',num2str(i),'.tif'));
    close
end
