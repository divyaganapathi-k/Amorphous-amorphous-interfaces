m1=1160;
m2=1560;
t=4332;
n=12000;
for i=1:43:(n-(2*t))
    B=zeros(m1,m2);
    I=zeros(m1,m2);
    for j=i:1:i+t
        A=imread(strcat('F:\Dedrifted coordinates\W4-dedrifted\',num2str(j),'.tif'));
        A=im2double(A);
        B=B+A;
    end
    B=B/t;
%     I=cat(3,B,B,B);
%     B(end,end,3)=0;  % All information in red channel
%     GrayIndex=uint8(floor(B*255));
%     Map=jet(255);
%     Irgb=ind2rgb(GrayIndex, Map);
    %Plot the image and some contours in color
%     image(Irgb)
%     imshow(Irgb);
    imshow(B);
    colormap(jet)
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\W4-colorav\',num2str(i),'.tif'));
    close all
end