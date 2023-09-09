clearvars -except mostmobile1 mostmobile2
f=unique(mostmobile2(:,3));
for i=1:10:length(f)
    f1=find(mostmobile1(:,4)==f(i));
    f2=find(mostmobile2(:,3)==f(i));
    scatter(mostmobile2(f2,1),mostmobile2(f2,2),20,'b');
    axis([0 1560 0 1160])
    hold on
    scatter(mostmobile1(f1,2),mostmobile1(f1,3),5,'r','filled');
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\mostmobile\W4-comparison1\',num2str(i),'.tif'));
    close();
end