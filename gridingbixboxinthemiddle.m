%to make the central box of dimension 1sigmas and the surroundings
% to be of 0.25sigmas to make it statistically countable
% close all
% load R vector(coordinates) and start
% PART-I -To find out the central box with 1sigmas cut off
% n=12030;
% n=max(R(:,3));
% t=750;
% sigmas=21.7;
% boxsiz=1;
% x=1560;
% y=1260;
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
% DD=sortrows(CC,3);
% F=find(DD(:,1)<61 & DD(:,1)>10 & DD(:,2)<43 & DD(:,2)>10);
% h=max(F);
% m1=DD(h,1);
% m2=DD(h,2);
% x1=m1*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
% y1=m2*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
% clear AA BB CC
% %PART-II Mapping the central box into four adjacent boxes of size
% %0.25sigmas
% boxsiz=0.25;
% N=[];
% for i=1:1:n
%     F=find(R(:,3)==i);
%     N(:,:,i)=hist3(R(F,1:2),'Edges',{(0:((boxsiz)*sigmas):x) (0:((boxsiz)*sigmas):y)});
% end
% % averaging to get the percentage occupancy
% H=find(N>1);
% N(H)=1;
% [h1,h2]=size(N(:,:,1));
% N2=[];
% for i=1:1:n-(2*t)
%     N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
%     N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
% end
%to find the required four boxes identified by quadrant numbers
% b11=(2*m1); b12=(2*m2)-1; % I quadrant
% b21=(2*m1)-1; b22=(2*m2)-1; % II quadrant
% b31=(2*m1)-1; b32=(2*m2); % III quadrant
% b41=(2*m1); b42=(2*m2); % IV quadrant
% 
% %defining the corodinates of the central box
% m11=b21+0.5;
% m22=b22+0.5;

%PART-III -To find the interface
coorinterface=[];
% (n-(2*t))
for i=1:1:1
    B=N2(:,:,i);  
    F1=isnan(B);
    f=find(F1==1);
    B(f)=0;
    %for boxsize=1 the random occupancy is 0.1075
    F=find(B<=0.2 & B>=0.1);
    C=[];   
    [C(:,1),C(:,2)]=ind2sub([h1,h2],F);
    D=[];
    k=1;
    
    %scan in x direction
    % first quadrant
    for j=b11:1:h1
        f=find(C(:,1)==j & C(:,2)<=b12);
        m=max(C(f,2));
            if isempty(m)==0
                D(k,1)=j;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=a;
                D(k,4)=1;
                k=k+1;
                if m==b12
                    break
                end
            end
    end
    
    %second quadrant
    for j=b21:-1:1
        f=find(C(:,1)==j & C(:,2)<=b22);
        m=max(C(f,2));
            if isempty(m)==0
                D(k,1)=j;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=pi-a;
                D(k,4)=1;
                k=k+1;
                if m==b22
                    break
                end
            end
    end
    
    %third quadrant
    for j=b31:-1:1
        f=find(C(:,1)==j & C(:,2)>=b32);
        m=min(C(f,2));
            if isempty(m)==0
                D(k,1)=j;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=pi+a;
                   D(k,4)=1;
                k=k+1;
                if m==b32
                    break
                end
            end
    end
    
    %fourth quadrant
    for j=b41:1:h1
        f=find(C(:,1)==j & C(:,2)>=b42);
        m=min(C(f,2));
            if isempty(m)==0
                D(k,1)=j;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=(2*pi)-a;
                D(k,4)=1;
                k=k+1;
                if m==b42
                    break
                end
            end
    end
    
    %y scan
    %first quadrant
    for j=b12:-1:1
        f=find(C(:,1)>=b11 & C(:,2)==j);
        m=min(C(f,1));
            if isempty(m)==0
                D(k,2)=j;
                D(k,1)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=a;
                D(k,4)=2;
                k=k+1;
                if m==b11
                    break
                end
            end
    end
    
    %second quadrant
    for j=b22:-1:1
        f=find(C(:,1)<=b21 & C(:,2)==j);
        m=max(C(f,1));
            if isempty(m)==0
                D(k,2)=j;
                D(k,1)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=pi-a;
                D(k,4)=2;
                k=k+1;
                if m==b21
                    break
                end
            end
    end
    
    %third quadrant
    for j=b32:-1:1
        f=find(C(:,1)>=b31 & C(:,2)==j);
        m=min(C(f,1));
            if isempty(m)==0
                D(k,2)=j;
                D(k,1)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=pi+a;
                D(k,4)=2;
                k=k+1;
                if m==b31
                    break
                end
            end
    end
    
%     %fourth quadrant
%     for j=b42:1:h1
%         f=find(C(:,1)>=b41 & C(:,2)==j);
%         m=max(C(f,1));
%             if isempty(m)==0
%                 D(k,2)=j;
%                 D(k,1)=m;
%                 a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                 if a>(2*pi)
%                     a=a-(2*pi);
%                 end
%                 D(k,3)=(2*pi)-a;
%                 D(k,4)=2;
%                 k=k+1;
%                 if m==b41
%                     break
%                 end
%             end
%     end
    E=D(:,1:2)*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
    E(:,3)=D(:,3);
    E1=sortrows(E,3);
    E2=unique(E1,'rows');
    E2=sortrows(E2,3);
    E2(:,4)=i;
    coorinterface=vertcat(coorinterface,E2);
end

%PART_IV -To find the smoothened interface
%coordinates will be in polar form at the end
smoothenedinterface=[];
for i=1:1:(n-(2*t))
    F=find(coorinterface(:,4)==i);
    coor=coorinterface(F,1:3);
    coor(:,4)=((((coor(:,1)-x1).^2)+((coor(:,2)-y1).^2)).^(0.5));
    %column three contains the angle and column four contains the distance
    %now to smoothen the interface
    smoointerface=sgolayfilt(coor(:,4),2,11);
    [X1,Y1]=pol2cart(((2*pi)-coor(:,3)),smoointerface(:,1));
    X2=((2*pi)-coor(:,3));
    Y2=smoointerface(:,1);
    X1=X1+x1;
    Y1=Y1+y1;
    scatter(x1,y1,30,'k','filled');
%     xlim([0 1000])
%     ylim([0 1000])
    hold on
    scatter(coor(:,1),coor(:,2),20,'r','filled');
    plot(coor(:,1),coor(:,2),'k','LineWidth',2);
    coor1=[];
    coor1(1,1:2)=coor(1,1:2);
    coor1(2,1:2)=coor(end,1:2);
    plot(coor1(:,1),coor1(:,2),'k','LineWidth',2);
    scatter(X1,Y1,20,'b','filled');
    plot(X1,Y1,'m','LineWidth',2);
    coor2=[];
    coor2=[];
    coor2(1,1)=X1(1,1);
    coor2(1,2)=Y1(1,1);
    coor2(2,1)=X1(end,1);
    coor2(2,2)=Y1(end,1);
    plot(coor2(:,1),coor2(:,2),'m','LineWidth',2);
    hold off
    Z=[];
    Z=horzcat(X1,Y1);
    Z(:,3)=X2;
    Z(:,4)=Y2;
    Z(:,5)=i;
    smoothenedinterface=vertcat(smoothenedinterface,Z);
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\W2-smoothinterface-0.4\',num2str(i),'.tif'));
end

%PART_V -To find Ak2
Amplitude2=zeros(360,2);
meanradius=[];
for i=1:1:n-(2*t)
    A=find(mostmoball(:,5)==i);
    B=mostmoball(A,1:4);
    meanradius(i)=mean(B(:,4));
end
r=min(meanradius);
Amplitude2(:,1)=(1/r):(1/r):(360*(1/r));
for i=1:1:n-(2*t)
    A=find(mostmoball(:,5)==i);
    B=mostmoball(A,1:4);
    l=meanradius(i);
    f=find(l*B(:,3)<=(r*2*pi));
    C=[];
    C(:,1:2)=B(f,3:4);
    [f,ia,ic]=unique(C(:,1));
    D=[];
    D(:,1:2)=C(ia,1:2);
    D(:,1)=l*D(:,1); 
    s=(r*pi)/180:(r*pi)/180:(r*2*pi);
    Y=interp1(D(:,1),D(:,2),s','linear','extrap');
    Y=Y-l;
    F=fft(Y);
    Z=(abs(F));
    Z=Z.^2;
    Amplitude2(:,2)=Amplitude2(:,2)+Z;
end
