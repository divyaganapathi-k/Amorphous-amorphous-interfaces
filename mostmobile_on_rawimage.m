mostmobile2=mostmobile1(:,[2 3 4 5]);
[C,ia,ib]=intersect(R,mostmobile2,'rows');
%A=imread('I:\manasa-data\WallData\W2_240414\W2_0T\0T_1.tif');
A=imread('C:\Users\Divya\Desktop\W2-1.tif');
B=imresize(A,2);
imshow(B);
set(gca,'Ydir','reverse');
hold on
% scatter(R1(ia,1),R1(ia,2)+210,5,'r','filled');
scatter(R1(ia,1),R1(ia,2)+210,5,mostmobile1(:,7),'filled');
colormap(lines);