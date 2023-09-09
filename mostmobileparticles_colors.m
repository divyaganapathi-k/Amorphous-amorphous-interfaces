f= mostmobile(:,4)<=5250;
mostmobile1=mostmobile(f,:);
mostmobile1(:,2:3)=mostmobile1(:,2:3)/21.7;
f=unique(mostmobile1(:,5));
A=100*rand(length(f),1);
for i=1:1:length(f)
    f1=find(mostmobile1(:,5)==f(i));
    mostmobile1(f1,7)=A(i);
end
H=imread('C:\Users\Divya\Desktop\W2_persistent_2-1.tif');
imshow(H);
% set(gca,'Ydir','reverse');
hold on
scatter(mostmobile1(:,3)*(477/44),mostmobile1(:,2)*(781/72),5,mostmobile1(:,7),'filled');
colormap(lines);
% hold off
% H=imread('C:\Users\Divya\Desktop\W2_persistent_1-1.tif');
% imshow(H);
% hold on
% f=find(mostmobile(:,3)<=5250);
% mostmobile1=mostmobile(f,:);
% f=find(mostmobile1(:,7)==2);
% mostmobile1(f,7)=1;
% f1=unique(mostmobile1(:,5));
% A=100*rand(length(f1),1);
% for i=1:1:length(f1)
%     f2=find(mostmobile1(:,5)==f1(i));
%     mostmobile1(f2,8)=A(i);
% end
% f=find(mostmobile1(:,7)==0);
% scatter((mostmobile1(f,2)/21.7)*(477/44),(mostmobile1(f,1)/21.7)*(781/72),10,mostmobile1(f,8),'filled');
% colormap(flag);