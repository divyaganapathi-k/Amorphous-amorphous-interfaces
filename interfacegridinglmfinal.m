% to find the most occupied box and finding interface coordinates around it
n=max(R(:,3));
t=750;
sigmas=21.7;
boxsiz=0.25;
x=1560;
y=1260;
number=20.5;
X=(0:((boxsiz)*sigmas):x);
Y=(0:((boxsiz)*sigmas):y);
for i=1:1:n
    F=find(R(:,3)==i);
    N(:,:,i)=hist3(R(F,1:2),'Edges',{(0:((boxsiz)*sigmas):x) (0:((boxsiz)*sigmas):y)});
end
%averaging to get the percentage occupancy
H=find(N>1);
N(H)=1;
N2=[];
for i=1:1:n-t
    N2(:,:,i)=mean(N(:,:,i:(i+t)),3);
end
F=find(N2>0.4);
AA=[];
[AA(:,1), AA(:,2), AA(:,3)]=ind2sub(size(N2),F);
BB=unique(AA(:,1:2),'rows');
for j=1:1:length(BB)
    F1=find(AA(:,1)==BB(j,1) & AA(:,2)==BB(j,2));
    CC(j,1:2)=BB(j,1:2);
    CC(j,3)=length(F1);
end
DD=sortrows(CC,3);
F=find(DD(:,1)<61 & DD(:,1)>10 & DD(:,2)<43 & DD(:,2)>10);
h=max(F);
m1=DD(h,1);
m2=DD(h,2);
x1=m1*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
y1=m2*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
[h1,h2]=size(N(:,:,1));
%x1 y1 are the coordinates of the box where for the maximum time the
%occupancy was greater than 0.9
%%
mostmoball=[];
for i=1:1:100
    B=N2(:,:,i);
%     B=B';
%     C=[];
% %     F=find(B>=0.9);
% %     F=find(B<=0.5 & B>=0.4);
%     F=find(B<=0.2 & B~=0);
%     [C(:,1),C(:,2)]=ind2sub([h1,h2],F);
%     C(:,1)=C(:,1);
%     C(:,2)=C(:,2);
%     C(:,3)=((C(:,1)-m1).^2+(C(:,2)-m2).^2).^(0.5);
%     for k=1:1:length(C)
%         a=atan((abs(C(k,2)-m2)/abs(C(k,1)-m1)));
%         if  a>(2*pi)
%             a=a-(2*pi);
%         end
%         if C(k,1)>=m1  && C(k,2)>=m2                                     %first quadrant
%             C(k,4)=a;
%         elseif C(k,1)<=m1 && C(k,2)>=m2                              % second quadrant
%             C(k,4)=pi-a;
%         elseif  C(k,1)<=m1 && C(k,2)<=m2                              %third quadrant
%              C(k,4)=pi+a;
%         elseif C(k,1)>=m1 && C(k,2)<=m2                              %fourth quadrant
%              C(k,4)=(2*pi)-a;         
%         end
%     end
%     %now to find the boxes in particular windows
%     j=1;
%     mostmob=[];
%     angle=((pi)/180);
%     for theta=angle:angle:2*pi
%         D=[];D1=[];
%         F1=find(C(:,4)<theta & C(:,4)>=(theta-angle));
%         if isempty(F1)==0
%             D(:,1)=C(F1,3);
%             D(:,2)=F1;
%             D1=sortrows(D,1);
%             if D(1,1)~=0
%                 mostmob(j,1)=((C(D1(1,2),1))*(boxsiz)*(sigmas))-((boxsiz/2)*(sigmas));
%                 mostmob(j,2)=((C(D1(1,2),2))*(boxsiz)*(sigmas))-((boxsiz/2)*(sigmas));
%                 mostmob(j,3)=C(D1(1,2),4);
%                 mostmob(j,4)=D1(1,1);
%                 mostmob(j,5)=i;
%             else
%                 mostmob(j,1)=((C(D1(2,2),1))*(boxsiz)*(sigmas))-((boxsiz/2)*(sigmas));
%                 mostmob(j,2)=((C(D1(2,2),2))*(boxsiz)*(sigmas))-((boxsiz/2)*(sigmas));
%                 mostmob(j,3)=C(D1(2,2),4);
%                 mostmob(j,4)=D1(2,1);
%                 mostmob(j,5)=i;
%             end 
% %             mostmob(j,1:2)=C(D1(1,2),1:2);
%              j=j+1;
%         end
%     end
%     mostmoball=vertcat(mostmoball,mostmob);
    pcolor(X,Y,B');
    set(gca,'YDir','reverse');
    colorbar
    colormap(jet);
    caxis([0.05 0.5]);
%     hold on
%     scatter(x1,y1,50,'c','filled');
%     xlim([0 1560])
%     ylim([0 1260])
%     hold on
%     scatter(mostmob(:,1),mostmob(:,2),40,'r','filled');
%     plot(mostmob(:,1),mostmob(:,2),'k','LineWidth',2);
%     mostmob1=[];
%     mostmob1(1,1:2)=mostmob(1,1:2);
%     mostmob1(2,1:2)=mostmob(end,1:2);
%     plot(mostmob1(:,1),mostmob1(:,2),'k','LineWidth',2);
%     hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\0.25sigmabox\W2\',num2str(i),'.tif'));
end
%now mostmoball contains all the coordinates required
