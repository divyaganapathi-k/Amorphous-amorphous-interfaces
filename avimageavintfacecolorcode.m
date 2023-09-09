%to superimpose smoothened interface on the time averaged images
% n=max(R(:,3));
t=48;
m1=883;
m2=1560;
f=unique(FinalCoordinates(:,3));
% (n-(2*t))
% for k=1:1:1
   for k=1:1:100
        i=f(k);
        B=zeros(m1,m2);
        for j=i:1:(i+t)
            A=imread(strcat('C:\Users\Divya\Desktop\codes\W5-2\',num2str(j),'.tif'));
            A=im2double(A);
            A=rgb2gray(A);
            B=B+A;
        end
        B=B/t;
%         imshow(B);
        Irgb = cat(3,B,B,B);
        image(Irgb)
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
        scatter(B1(:,1),B1(:,2),20,'g');
        plot(B1(:,1),B1(:,2),'b');
        C=[];
        C(1,1:2)=B1(1,1:2);
        C(2,1:2)=B1(end,1:2);
        scatter(C(:,1),C(:,2),20,'g');
        plot(C(:,1),C(:,2),'b');
        scatter(x1,y1,20,'y','filled');
        %scattering most mobile particles on top
%         f=find(D(:,3)==i);
%         if isempty(f)==1
%             continue
%         else
%             scatter(D(f,1),D(f,2),20,'g','filled');
%         end
%         colormap jet
        E=N2(:,:,i);
        f2=find(E>0.084 & E<0.2);
        F=[];
        [I,J]=ind2sub(size(E),f2);
        F(:,1)=I*(0.5)*sigmas+addon1;
        F(:,2)=J*(0.5)*sigmas+addon2;
        F(:,3)=E(f2);
        scatter(F(:,1),F(:,2),10,'r','filled');
%         colorbar
%         caxis([0.084 1])
        hold off
        h=gcf;
        saveas(h,strcat('C:\Users\Divya\Desktop\codes\W5-superimposedwithoverlap2\',num2str(i),'.tif'));
        close all 
   end
% end