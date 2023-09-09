%to superimpose smoothened interface on the time averaged images
% n=max(R(:,3));
t=4332;
m1=1160;
m2=1560;
f=unique(FinalCoordinates(:,3));
% (n-(2*t))
% for k=1:1:1
   for k=1:100:3500
        i=f(k);
        B=zeros(m1,m2);
        for j=i:1:(i+t)
    %         A=imread(strcat('C:\Users\Divya\Desktop\codes\W2-dedrifted1\',num2str(j),'.tif'));
%             A=imread('C:\Users\Divya\Desktop\codes\W2-dedrifted1.tif',i);
%             A=imread('C:\Users\Divya\Desktop\codes\W2-dedrifted1.tif',i);
%             A=imread(strcat('C:\Users\Divya\Desktop\codes\W2-dedrifted1-1\',num2str(j),'.tif'));
            A=imread(strcat('C:\Users\Divya\Desktop\codes\W4-dedrifted1\',num2str(j),'.tif'));
            A=im2double(A);
            
%             A=rgb2gray(A);
            B=B+A;
        end
        B=B/t;
        imshow(B);
        hold on
        x1=m11*(boxsiz)*(sigmas);
        y1=m22*(boxsiz)*(sigmas);
%          & FinalCoordinates(:,1)<6
        f1=find(FinalCoordinates(:,3)==i);
        A1=FinalCoordinates(f1,1:2);
        B1=[];
        [B1(:,1),B1(:,2)]=pol2cart(((2*pi)-A1(:,1)),A1(:,2));
        B1(:,1)=B1(:,1)+x1;
        B1(:,2)=B1(:,2)+y1;
        scatter(B1(:,1),B1(:,2),10,'r','filled');
        plot(B1(:,1),B1(:,2),'b');
        C=[];
        C(1,1:2)=B1(1,1:2);
        C(2,1:2)=B1(end,1:2);
        scatter(C(:,1),C(:,2),10,'r','filled');
        plot(C(:,1),C(:,2),'b');
        scatter(x1,y1,20,'m','filled');
        %scattering most mobile particles on top
%         f=find(D(:,3)==i);
%         if isempty(f)==1
%             continue
%         else
%             scatter(D(f,1),D(f,2),20,'g','filled');
%         end
%         f=find(smoothenedinterface1(:,5)==i);
%         C=smoothenedinterface1(f,1:2);
    %     f=find(coorinterface(:,4)==i);
    %     C=coorinterface(f,1:2);
%         f=find(finalcoorinterface(:,5)==i & finalcoorinterface(:,6)==k);
%         C=finalcoorinterface(f,1:2);
%         scatter(C(:,1),C(:,2),10,'b','filled');
%         plot(C(:,1),C(:,2),'m','LineWidth',1);
%         scatter(x1,y1,10,'r','filled');
%         C1=[];
%         C1(1,1:2)=C(1,1:2);
%         C1(2,1:2)=C(end,1:2);
%         plot(C1(:,1),C1(:,2),'m','LineWidth',1);
        hold off
        h=gcf;
        saveas(h,strcat('C:\Users\Divya\Desktop\codes\W4-superimposed\',num2str(i),'.tif'));
        close all 
   end
% end