%to superimpose smoothened interface on the time averaged images
% n=max(R(:,3));
t=48;
for i=1:10:2000
    F=find(R(:,3)==i);
    A=255*(ones(1160,1560,'uint8'));
    imshow(A);
    hold on
    viscircles(R(F,1:2),((0.8)*((R(F,5)).^(0.5))),'EdgeColor','k');
%     hold off
%     saveas(gcf,'test.tif');
%     B=imread('test.tif');
%     B=im2bw(B,0.5);
%     B=~B;
%     B=imfill(B,'holes');
%     B=~B;
%     imshow(B);
%     hold on 
    f=find(smoothenedinterface(:,3)==i);
    B=smoothenedinterface(f,1:2);
    scatter(B(:,1),B(:,2),30,'b','filled');
    plot(B(:,1),B(:,2),'m','LineWidth',2);
    C=[];
    C(1,1:2)=B(1,1:2);
    C(2,1:2)=B(end,1:2);
    plot(C(:,1),C(:,2),'m','LineWidth',2);
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\trial3\',num2str(i),'.tif'));
end