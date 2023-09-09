% to find out the interface by doing xy scan around the most occupied box
% % PARTI-TO FIND THE OVERLAP FUNCTION FOR ALL THE BOXES
n=max(R(:,3));
t=750;
sigmas=21.7;
boxsiz=1;
x=1560;
y=1260;
number=20.5;
X=(0:((boxsiz)*sigmas):x);
Y=(0:((boxsiz)*sigmas):y);
N=[];
parfor i=1:1:n
    F=find(R(:,3)==i);
    N(:,:,i)=hist3(R(F,1:2),'Edges',{(0:((boxsiz)*sigmas):x) (0:((boxsiz)*sigmas):y)});
end
% averaging to get the percentage occupancy
H=find(N>1);
N(H)=1;
N2=[];
parfor i=1:1:n-(2*t)
    N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
    N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
end
F=find(N2>0.9);
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
% % PARTII-TO FIND OUT INTERFACES IN EACH OF THE IMAGES
coorinterface=[];
for i=1:1:(n-(2*t))
    B=N2(:,:,i);
%     f=find(B==0);
% %     B(f)=NaN;
    F=find(B<=0.3 & B>=0.1075);
    C=[];
    [C(:,1),C(:,2)]=ind2sub([h1,h2],F);
    D=[];
    k=1;
    for j1=m1:-1:1 %third quadrant
        f=find(C(:,1)==j1 & C(:,2)>=m2);
        m=min(C(f,2));
        if isempty(m)==0
            D(k,1)=j1;
            D(k,2)=m;
            a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
            if a>(2*pi)
                a=a-(2*pi);
            end
            D(k,3)=pi+a;
            k=k+1;
            if m==m2
                break
            end
        end
    end
    for j2=j1:1:m1 %second quadrant
        f=find(C(:,1)==j2 & C(:,2)<=m2);
        m=max(C(f,2));
        if isempty(m)==0
            D(k,1)=j2;
            D(k,2)=m;
            a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
            if a>(2*pi)
                a=a-(2*pi);
            end
            D(k,3)=pi-a;
            k=k+1;
        end
    end
    for j3=m1:1:h1 %first quadrant
        f=find(C(:,1)==j3 & C(:,2)<=m2);
         m=max(C(f,2));
        if isempty(m)==0
            D(k,1)=j3;
            D(k,2)=m;
            a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
            if a>(2*pi)
                a=a-(2*pi);
            end
            D(k,3)=a;
            k=k+1;
            if m==m2
                break
            end
        end
    end
    for j4=j3:-1:m1 %fourth quadrant
        f=find(C(:,1)==j4 & C(:,2)>=m2);
        m=min(C(f,2));
        if isempty(m)==0
            D(k,1)=j4;
            D(k,2)=m;
            a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
            if a>(2*pi)
                a=a-(2*pi);
            end
            D(k,3)=(2*pi)-a;
            k=k+1;
        end
    end
    for k1=m2:1:h2 %third quadrant
        f=find(C(:,2)==k1 & C(:,1)<=m1);
        m=max(C(f,1));
        if isempty(m)==0
            D(k,1)=m;
            D(k,2)=k1;
            a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
            if a>(2*pi)
                a=a-(2*pi);
            end
            D(k,3)=pi+a;
            k=k+1;
        end
        if m==m1;
            break 
        end
    end
    for k2=k1:-1:m2 %fourth quadrant
        f=find(C(:,2)==k2 & C(:,1)>=m1);
        m=min(C(f,1));
        if isempty(m)==0
            D(k,1)=m;
            D(k,2)=k2;
            a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
            if a>(2*pi)
                a=a-(2*pi);
            end
            D(k,3)=(2*pi)-a;
            k=k+1;
        end
    end
    for k3=m2:-1:1 %first quadrant
        f=find(C(:,2)==k3 & C(:,1)>=m1);
        m=min(C(f,1));
        if isempty(m)==0
            D(k,1)=m;
            D(k,2)=k3;
            a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
            if a>(2*pi)
                a=a-(2*pi);
            end
            D(k,3)=a;
            k=k+1;
        end
        if m==m1
            break
        end
    end
    for k4=k3:1:m2 %second quadrant
        f=find(C(:,2)==k4 & C(:,1)<=m1);
        m=max(C(f,1));
        if isempty(m)==0
            D(k,1)=m;
            D(k,2)=k4;
            a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
            if a>(2*pi)
                a=a-(2*pi);
            end
            D(k,3)=pi-a;
            k=k+1;
        end
    end
% %     [D1,id1,id2]=unique(D,'rows');
%     D(:,3)=atan((D(:,2)-m2)./(D(:,1)-m1));
    E=D(:,1:2)*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
    E(:,3)=D(:,3);
    E1=sortrows(E,3);
    E2=unique(E1,'rows');
    E2=sortrows(E2,3);
    E2(:,4)=i;
%     pcolor(X,Y,B');
%     set(gca,'YDir','reverse');
%     colorbar
%     colormap(jet);
%     caxis([0.05 1]);
%     hold on
%     scatter(x1,y1,20,'y','filled');
%     scatter(E2(:,1),E2(:,2),10,'c','filled');
%     plot(E2(:,1),E2(:,2),'c','LineWidth',2);
%     E1=[];
%     E1(1,1:2)=E(1,1:2);
%     E1(2,1:2)=E(end,1:2);
%     plot(E1(:,1),E1(:,2),'c','LineWidth',2);
%     hold off
    coorinterface=vertcat(coorinterface,E2);
%     h=gcf;
%     saveas(h,strcat('C:\Users\Divya\Desktop\codes\W4-overlapfunction(0.5)22\',num2str(i),'.tif')); 
end
% %smoothened interface fitting
smoothenedinterface=[];
for i=1:1:(n-(2*t))
    F=find(coorinterface(:,4)==i);
    coor=coorinterface(F,1:3);
    coor(:,4)=((((coor(:,1)-x1).^2)+((coor(:,2)-y1).^2)).^(0.5));
    %column three contains the angle and column four contains the distance
    %now to smoothen the interface
%     smoointerface=sgolayfilt(coor(:,4),2,11);
%     [X1,Y1]=pol2cart(((2*pi)-coor(:,3)),smoointerface(:,1));
%     X2=((2*pi)-coor(:,3));
%     Y2=smoointerface(:,1);
%     X1=X1+x1;
%     Y1=Y1+y1;
    scatter(x1,y1,30,'b','filled');
    xlim([0 1600])
    ylim([0 1200])
    hold on
    scatter(coor(:,1),coor(:,2),20,'r','filled');
    plot(coor(:,1),coor(:,2),'k','LineWidth',1);
    coor1=[];
    coor1(1,1:2)=coor(1,1:2);
    coor1(2,1:2)=coor(end,1:2);
    plot(coor1(:,1),coor1(:,2),'k','LineWidth',1);
%     scatter(X1,Y1,20,'b','filled');
%     plot(X1,Y1,'m','LineWidth',2);
%     coor2=[];
%     coor2=[];
%     coor2(1,1)=X1(1,1);
%     coor2(1,2)=Y1(1,1);
%     coor2(2,1)=X1(end,1);
%     coor2(2,2)=Y1(end,1);
%     plot(coor2(:,1),coor2(:,2),'m','LineWidth',2);
    hold off
    Z=[];
    Z=horzcat(X1,Y1);
    Z(:,3)=X2;
    Z(:,4)=Y2;
    Z(:,5)=i;
    smoothenedinterface=vertcat(smoothenedinterface,Z);
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\W2-interface1sigma3\',num2str(i),'.tif'));
end
