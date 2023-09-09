H=imread('C:\Users\Divya\Desktop\W2-1.tif');
% mostmobile(:,1:2)=mostmobile(:,1:2)/21.7;
for i=1:1:4500
    f=find(mostmobile(:,3)==i);
    imshow(H);
    hold on
    scatter(mostmobile(f,2)*(477/44),mostmobile(f,1)*(781/72),10,'b','filled');
    hold off
    h=gcf;
    saveas(h,strcat('E:\W2-mosaic\',num2str(i),'.tif'));
end