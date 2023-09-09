% % to find out the interface by doing xy scan around the most occupied box
% n=max(R(:,3));
% t=750;
% sigmas=21.7;
% boxsiz=1;
% x=1560;
% y=1260;
% number=20.5;
% X=(0:((boxsiz)*sigmas):x);
% Y=(0:((boxsiz)*sigmas):y);
% N=[];
% for i=1:1:n
%     F=find(R(:,3)==i);
%     N(:,:,i)=hist3(R(F,1:2),'Edges',{(0:((boxsiz)*sigmas):x) (0:((boxsiz)*sigmas):y)});
% end
% % averaging to get the percentage occupancy
% H=find(N>1);
% N(H)=1;
% N2=[];
% for i=1:1:n-(2*t)
%     N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
%     N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
% end
% F=find(N2>0.9);
% AA=[];
% [AA(:,1), AA(:,2), AA(:,3)]=ind2sub(size(N2),F);
% BB=unique(AA(:,1:2),'rows');
% for j=1:1:length(BB)
%     F1=find(AA(:,1)==BB(j,1) & AA(:,2)==BB(j,2));
%     CC(j,1:2)=BB(j,1:2);
%     CC(j,3)=length(F1);
% end
DD=sortrows(CC,3);
% F=find(DD(:,1)<61 & DD(:,1)>10 & DD(:,2)<43 & DD(:,2)>10);
% h=max(F);
m1=DD(end,1);
m2=DD(end,2);
x1=m1*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
y1=m2*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
[h1,h2]=size(N(:,:,1));
for i=1:1:1
    B=N2(:,:,i);
%     f=find(B==0);
% %     B(f)=NaN;
    F=find(B<=0.2 & B~=0);
    C=[];
    [C(:,1),C(:,2)]=ind2sub([h1,h2],F);
    D=[];
    k=1;
    for j1=m1:-1:1
        f=find(C(:,1)==j1 & C(:,2)>=m2);
        m=min(C(f,2));
        if isempty(m)==0
            D(k,1)=j1;
            D(k,2)=m;
            k=k+1;
            if m==m2
                break
            end
        end
    end
    for j2=j1:1:m1
        f=find(C(:,1)==j2 & C(:,2)<=m2);
        m=max(C(f,2));
        if isempty(m)==0
            D(k,1)=j2;
            D(k,2)=m;
            k=k+1;
        end
    end
    for j3=m1:1:h1
        f=find(C(:,1)==j3 & C(:,2)<=m2);
         m=max(C(f,2));
        if isempty(m)==0
            D(k,1)=j3;
            D(k,2)=m;
            k=k+1;
            if m==m2
                break
            end
        end
    end
    for j4=j3:-1:m1
        f=find(C(:,1)==j4 & C(:,2)>=m2);
        m=min(C(f,2));
        if isempty(m)==0
            D(k,1)=j4;
            D(k,2)=m;
            k=k+1;
        end
    end
    for k1=m2:1:h2
        f=find(C(:,2)==k1 & C(:,1)<=m1);
        m=max(C(f,1));
        if isempty(m)==0
            D(k,1)=m;
            D(k,2)=k1;
            k=k+1;
        end
        if m==m1;
            break 
        end
    end
    for k2=k1:-1:m2
        f=find(C(:,2)==k2 & C(:,1)>=m1);
        m=min(C(f,1));
        if isempty(m)==0
            D(k,1)=m;
            D(k,2)=k2;
            k=k+1;
        end
    end
    for k3=m2:-1:1
        f=find(C(:,2)==k3 & C(:,1)>=m1);
        m=min(C(f,1));
        if isempty(m)==0
            D(k,1)=m;
            D(k,2)=k3;
            k=k+1;
        end
        if m==m1
            break
        end
    end
    for k4=k3:1:m2
        f=find(C(:,2)==k4 & C(:,1)<=m1);
        m=max(C(f,1));
        if isempty(m)==0
            D(k,1)=m;
            D(k,2)=k4;
            k=k+1;
        end
    end
% %     [D1,id1,id2]=unique(D,'rows');
%     D(:,3)=atan((D(:,2)-m2)./(D(:,1)-m1));
    E=D(:,1:2)*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
%     E(:,3)=D(:,3);
    pcolor(X,Y,B');
    set(gca,'YDir','reverse');
    colorbar
    colormap(jet);
    caxis([0.05 1]);
    hold on
    scatter(x1,y1,20,'y','filled');
    scatter(E(:,1),E(:,2),10,'c','filled');
%     plot(E(:,1),E(:,2),'c','LineWidth',2);
% %     E1=[];
%     E1(1,1:2)=E(1,1:2);
%     E1(2,1:2)=E(end,1:2);
%     plot(E1(:,1),E1(:,2),'c','LineWidth',2);
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\W2-overlapfunction(0.5)\',num2str(i),'.tif')); 
end
