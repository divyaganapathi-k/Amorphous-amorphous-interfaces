clearvars
% PART-I -To find out the central box with 1sigmas cut off
for iii=1:1:1
for ii=1:1:9
     filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas',num2str(iii),num2str(ii),'.mat');
%     filename=strcat('D:\Final Data\1ta-data analysis\W2\W2final-shiftedinterfaceta1',num2str(ii),'.mat');
%     filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(ii),'.mat');
%     filename=strcat('D:\Newdataanalysis\W2\W2-finalshiftedinterface1',num2str(ii),'.mat');
    load(filename);
    clearvars -except R ii iii N
    n=max(R(:,3));
% %     n=13000;
    t=5250*iii;
% %     t=350+(150*(iii-1));
    sigmas=21.7;
    boxsiz=1;
    x=1560;
    y=1160;
    if ii==1
     addon1=((0)*sigmas);
     addon2=((0)*sigmas);
    elseif ii==2
        addon1=((0.1)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==3
        addon1=((0)*sigmas);
        addon2=((0.1)*sigmas);
    elseif ii==4
        addon1=((-0.1)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==5
        addon1=((0)*sigmas);
        addon2=((-0.1)*sigmas);
    end
    if ii==6
       addon1=(((0.1)*sigmas)*cos(pi/4));
       addon2=(((0.1)*sigmas)*sin(pi/4));
    elseif ii==7
         addon1=-(((0.1)*sigmas)*cos(pi/4));
         addon2=(((0.1)*sigmas)*sin(pi/4));
    elseif ii==8
         addon1=-(((0.1)*sigmas)*cos(pi/4));
         addon2=-(((0.1)*sigmas)*sin(pi/4));
    elseif ii==9
         addon1=(((0.1)*sigmas)*cos(pi/4));
         addon2=-(((0.1)*sigmas)*sin(pi/4));
    end
    N2=[];
    parfor i=1:1:n-(2*t)
        N2(:,:,i)=mean((N(:,:,i:50:(i+t))).*(N(:,:,(i+t):50:(i+(2*t)))),3);
        N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:50:(i+t)),3)));
    end
%     F=find(N2>0.9);
%     AA=[];
%     [AA(:,1), AA(:,2), AA(:,3)]=ind2sub(size(N2),F);
%     BB=unique(AA(:,1:2),'rows');
%     for j=1:1:length(BB)
%         F1=find(AA(:,1)==BB(j,1) & AA(:,2)==BB(j,2));
%         CC(j,1:2)=BB(j,1:2);
%         CC(j,3)=length(F1);
%     end
%     DD=sortrows(CC,3);
%     F=find(DD(:,1)<61 & DD(:,1)>10 & DD(:,2)<33 & DD(:,2)>10);
%     h=max(F);
%     m1=DD(h,1);
%     m2=DD(h,2);
%     m1=52;
%     m2=27;
%     ff=find(DD(:,1)==50 & DD(:,2)==32);
%     noofimages = DD(ff,3);
%     x1=m1*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas))+(addon1);
%     y1=m2*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas))+(addon2);
% %     clear AA BB CC
% %     %defining the corodinates of the central box
%     m11=b21+0.5;
%     m22=b22+0.5;
% 
% %     % PART-III -To find the interface
%     coorinterface=[];
% % %     % (n-(2*t))
% % % %     f=find(AA(:,1)==m1 & AA(:,2)==m2);
% % % %     dummy=AA(f,3);
%     f=find(AA(:,1)==m1 & AA(:,2)==m2);
%     lengthoft=AA(f,3);
% % %     for i=1:1:(n-(2*t))
%     for i=1:1:length(lengthoft);
%         B=N2(:,:,lengthoft(i));
% %         B=N2(:,:,i);
%         F1=isnan(B);
%         f=find(F1==1);
%         B(f)=0;
%         %for boxsize=1 the random occupancy is 0.1075
%         F=find(B<=0.4 & B>=0.084);
%         C=[];   
%         [C(:,1),C(:,2)]=ind2sub([h1,h2],F);
%         D=[];
%         k=1;
% 
%         %scan in x direction
%         % first quadrant
%         f=find(C(:,2)==b12 & C(:,1)>=(b11+1) & C(:,1)<=h1);
%         if isempty(f)==0
%             breakvalue=b12;
%         else
%             f=find(C(:,2)==(b12-1) & C(:,1)>=(b11+1) & C(:,1)<=h1);
%             if isempty(f)==0
%                 breakvalue=b12-1;
%             else
%               breakvalue=b12-2;
%             end
%         end
%         for j=(b11+1):1:h1
%             f=find(C(:,1)==j & C(:,2)<=b12);
%             m=max(C(f,2));
%                 if isempty(m)==0
%                     D(k,1)=j;
%                     D(k,2)=m;
%                     a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                     if a>(2*pi)
%                         aa=(a/(2*pi));
%                         a=a-(floor(aa)*(2*pi));
%                     end
%                     D(k,3)=a;
%                     D(k,4)=1;
%                     k=k+1;
%                     if m==breakvalue
%                         break
%                     end
%                 end
%         end
%         f=find(C(:,1)==b11 & C(:,2)<=b12);
%         if isempty(f)==0
%             C1=C(f,2);
%             C1=sort(C1);
%             if (C1(end)==b12 && length(C1)>1)
%                 m=C1(end-1);
%             else
%                 m=C1(end);
%             end
%             if (isempty(m)==0 && m~=b12)
%                 D(k,1)=b11;
%                 D(k,2)=m;
%                 a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                 if a>(2*pi)
%                     aa=(a/(2*pi));
%                     a=a-(floor(aa)*(2*pi));
%                 end
%                 D(k,3)=a;
%                 D(k,4)=1;
%                 k=k+1;
%             end
%         end
% 
%         %second quadrant
%         f=find(C(:,2)==b22 & C(:,1)<=(b21-1) & C(:,1)>=1);
%         if isempty(f)==0
%             breakvalue=b22;
%         else
%             f=find(C(:,2)==(b22-1) & C(:,1)<=(b21-1) & C(:,1)>=1);
%             if isempty(f)==0
%                 breakvalue=b22-1;
%             else
%               breakvalue=b22-2;
%             end
%         end
%         for j=(b21-1):-1:1
%            f=find(C(:,1)==j & C(:,2)<=b22);
%             m=max(C(f,2));
%                 if isempty(m)==0
%                     D(k,1)=j;
%                     D(k,2)=m;
%                     a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                     if a>(2*pi)
%                         aa=(a/(2*pi));
%                         a=a-(floor(aa)*(2*pi));
%                     end
%                     D(k,3)=pi-a;
%                     D(k,4)=1;
%                     k=k+1;
%                     if m==breakvalue
%                         break
%                     end
%                 end
%         end
%         f=find(C(:,1)==b21 & C(:,2)<=b22);
%         if isempty(f)==0
%             C1=C(f,2);
%             C1=sort(C1);
%             if (C1(end)==b22 && length(C1)>1)
%                 m=C1(end-1);
%             else
%                 m=C1(end);
%             end
%             if (isempty(m)==0 && m~=b22)
%                 D(k,1)=b21;
%                 D(k,2)=m;
%                 a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                 if a>(2*pi)
%                     aa=(a/(2*pi));
%                     a=a-(floor(aa)*(2*pi));
%                 end
%                 D(k,3)=pi-a;
%                 D(k,4)=1;
%                 k=k+1;
%             end
%         end
% 
%         %third quadrant
%         f=find(C(:,2)==b32 & C(:,1)<=(b31-1) & C(:,1)>=1);
%         if isempty(f)==0
%             breakvalue=b32;
%         else
%             f=find(C(:,2)==(b32+1) & C(:,1)<=(b31-1) & C(:,1)>=1);
%             if isempty(f)==0
%                 breakvalue=b32+1;
%             else
%               breakvalue=b32+2;
%             end
%         end
%         for j=(b31-1):-1:1
%             f=find(C(:,1)==j & C(:,2)>=b32);
%             m=min(C(f,2));
%                 if isempty(m)==0
%                     D(k,1)=j;
%                     D(k,2)=m;
%                     a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                     if a>(2*pi)
%                         aa=(a/(2*pi));
%                         a=a-(floor(aa)*(2*pi));
%                     end
%                     D(k,3)=pi+a;
%                     D(k,4)=1;
%                     k=k+1;
%                     if m==breakvalue
%                         break
%                     end
%                 end
%         end
%         f=find(C(:,1)==b31 & C(:,2)>=b32);
%         if isempty(f)==0
%             C1=C(f,2);
%             C1=sort(C1,'descend');
%             if (C1(end)==b32 && length(C1)>1)
%                 m=C1(end-1);
%             else
%                 m=C1(end);
%             end
%             if (isempty(m)==0 && m~=b32)
%                 D(k,1)=b31;
%                 D(k,2)=m;
%                 a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                 if a>(2*pi)
%                     aa=(a/(2*pi));
%                     a=a-(floor(aa)*(2*pi));
%                 end
%                 D(k,3)=pi+a;
%                 D(k,4)=1;
%                 k=k+1;
%             end
%         end
% 
%         %fourth quadrant
%         f=find(C(:,2)==b42 & C(:,1)>=(b41+1) & C(:,1)<=h1);
%         if isempty(f)==0
%             breakvalue=b42;
%         else
%             f=find(C(:,2)==(b42+1) & C(:,1)>=(b41+1) & C(:,1)<=h1);
%             if isempty(f)==0
%                 breakvalue=b42+1;
%             else
%               breakvalue=b42+2;
%             end
%         end
%         for j=(b41+1):1:h1
%            f=find(C(:,1)==j & C(:,2)>=b42);
%             m=min(C(f,2));
%                 if isempty(m)==0
%                     D(k,1)=j;
%                     D(k,2)=m;
%                     a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                     if a>(2*pi)
%                         aa=(a/(2*pi));
%                         a=a-(floor(aa)*(2*pi));
%                     end
%                     D(k,3)=(2*pi)-a;
%                     D(k,4)=1;
%                     k=k+1;
%                     if m==breakvalue
%                         break
%                     end
%                 end 
%         end
%         f=find(C(:,1)==b41 & C(:,2)>=b42);
%         if isempty(f)==0
%             C1=C(f,2);
%             C1=sort(C1,'descend');
%             if (C1(end)==b42 && length(C1)>1)
%                 m=C1(end-1);
%             else
%                 m=C1(end);
%             end
%             if (isempty(m)==0 && m~=b42)
%                 D(k,1)=b41;
%                 D(k,2)=m;
%                 a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                 if a>(2*pi)
%                     aa=(a/(2*pi));
%                     a=a-(floor(aa)*(2*pi));
%                 end
%                 D(k,3)=(2*pi)-a;
%                 D(k,4)=1;
%                 k=k+1;
%             end
%         end
% 
%         %y scan
%         %first quadrant
%          f=find(C(:,1)==b11 & C(:,2)<=(b12-1) & C(:,2)>=1);
%         if isempty(f)==0
%             breakvalue=b11;
%         else
%             f=find(C(:,1)==(b11+1) & C(:,2)<=(b12-1) & C(:,2)>=1);
%             if isempty(f)==0
%                 breakvalue=b11+1;
%             else
%               breakvalue=b11+2;
%             end
%         end
%         for j=(b12-1):-1:1
%             f=find(C(:,1)>=b11 & C(:,2)==j);
%             m=min(C(f,1));
%                 if isempty(m)==0
%                     D(k,2)=j;
%                     D(k,1)=m;
%                     a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                     if a>(2*pi)
%                         aa=(a/(2*pi));
%                         a=a-(floor(aa)*(2*pi));
%                     end
%                     D(k,3)=a;
%                     D(k,4)=2;
%                     k=k+1;
%                     if m==breakvalue
%                         break
%                     end
%                 end
%         end
%         f=find(C(:,2)==b12 & C(:,1)>=b11);
%         if isempty(f)==0
%             C1=C(f,1);
%             C1=sort(C1,'descend');
%             if (C1(end)==b11 && length(C1)>1)
%                 m=C1(end-1);
%             else
%                 m=C1(end);
%             end
%             if (isempty(m)==0 && m~=b11)
%                 D(k,2)=b12;
%                 D(k,1)=m;
%                 a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                 if a>(2*pi)
%                    aa=(a/(2*pi));
%                    a=a-(floor(aa)*(2*pi));
%                 end
%                 D(k,3)=a;
%                 D(k,4)=2;
%                 k=k+1;
%             end
%         end
% 
%         %second quadrant
%          f=find(C(:,1)==b21 & C(:,2)<=(b22-1) & C(:,2)>=1);
%         if isempty(f)==0
%             breakvalue=b21;
%         else
%             f=find(C(:,1)==(b21-1) & C(:,2)<=(b22-1) & C(:,2)>=1);
%             if isempty(f)==0
%                 breakvalue=b21-1;
%             else
%               breakvalue=b21-2;
%             end
%         end
%         for j=(b22-1):-1:1
%             f=find(C(:,1)<=b21 & C(:,2)==j);
%             m=max(C(f,1));
%                 if isempty(m)==0
%                     D(k,2)=j;
%                     D(k,1)=m;
%                     a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                     if a>(2*pi)
%                         aa=(a/(2*pi));
%                         a=a-(floor(aa)*(2*pi));
%                     end
%                     D(k,3)=pi-a;
%                     D(k,4)=2;
%                     k=k+1;
%                     if m==breakvalue
%                         break
%                     end
%                 end
%         end
%         f=find(C(:,2)==b22 & C(:,1)<=b21);
%         if isempty(f)==0
%             C1=C(f,1);
%             C1=sort(C1);
%             if (C1(end)==b21 && length(C1)>1)
%                 m=C1(end-1);
%             else
%                 m=C1(end);
%             end
%             if (isempty(m)==0 && m~=b21)
%                 D(k,2)=b22;
%                 D(k,1)=m;
%                 a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                 if a>(2*pi)
%                     aa=(a/(2*pi));
%                     a=a-(floor(aa)*(2*pi));
%                 end
%                 D(k,3)=pi-a;
%                 D(k,4)=2;
%                 k=k+1;
%             end
%         end
% 
%         %third quadrant
%         f=find(C(:,1)==b31 & C(:,2)>=(b32+1) & C(:,2)<=h2);
%         if isempty(f)==0
%             breakvalue=b31;
%         else
%             f=find(C(:,1)==(b31-1) & C(:,2)>=(b32+1) & C(:,2)<=h2);
%             if isempty(f)==0
%                 breakvalue=b31-1;
%             else
%               breakvalue=b31-2;
%             end
%         end
%         for j=(b32+1):1:h2
%             f=find(C(:,1)<=b31 & C(:,2)==j);
%             m=max(C(f,1));
%                 if isempty(m)==0
%                     D(k,2)=j;
%                     D(k,1)=m;
%                     a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                     if a>(2*pi)
%                         aa=(a/(2*pi));
%                         a=a-(floor(aa)*(2*pi));
%                     end
%                     D(k,3)=pi+a;
%                     D(k,4)=2;
%                     k=k+1;
%                     if m==breakvalue
%                         break
%                     end
%                 end
%         end
%         f=find(C(:,2)==b32 & C(:,1)<=b31);
%         if isempty(f)==0
%             C1=C(f,1);
%             C1=sort(C1);
%             if (C1(end)==b31 && length(C1)>1)
%                 m=C1(end-1);
%             else
%                 m=C1(end);
%             end
%             if (isempty(m)==0 && m~=b31)
%                 D(k,2)=b32;
%                 D(k,1)=m;
%                 a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                 if a>(2*pi)
%                     aa=(a/(2*pi));
%                     a=a-(floor(aa)*(2*pi));
%                 end
%                 D(k,3)=pi+a;
%                 D(k,4)=2;
%                 k=k+1;
%             end
%         end
% 
%         %fourth quadrant
%          f=find(C(:,1)==b41 & C(:,2)>=(b42+1) & C(:,2)<=h2);
%         if isempty(f)==0
%             breakvalue=b41;
%         else
%             f=find(C(:,1)==(b41+1) & C(:,2)>=(b42+1) & C(:,2)<=h2);
%             if isempty(f)==0
%                 breakvalue=b41+1;
%             else
%               breakvalue=b41+2;
%             end
%         end
%         for j=(b42+1):1:h2
%             f=find(C(:,1)>=b41 & C(:,2)==j);
%             m=min(C(f,1));
%                 if isempty(m)==0
%                     D(k,2)=j;
%                     D(k,1)=m;
%                     a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                     if a>(2*pi)
%                         aa=(a/(2*pi));
%                         a=a-(floor(aa)*(2*pi));
%                     end
%                     D(k,3)=(2*pi)-a;
%                     D(k,4)=2;
%                     k=k+1;
%                     if m==breakvalue
%                         break
%                     end
%                 end
%         end
%         f=find(C(:,2)==b42 & C(:,1)>=b41);
%         if isempty(f)==0
%             C1=C(f,1);
%             C1=sort(C1,'descend');
%             if (C1(end)==b41 && length(C1)>1)
%                 m=C1(end-1);
%             else
%                 m=C1(end);
%             end
%             if (isempty(m)==0 && m~=b41)
%                 D(k,2)=b42;
%                 D(k,1)=m;
%                 a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
%                 if a>(2*pi)
%                     aa=(a/(2*pi));
%                     a=a-(floor(aa)*(2*pi));
%                 end
%                 D(k,3)=(2*pi)-a;
%                 D(k,4)=2;
%                 k=k+1;
%             end
%         end
%         x1=m11*(boxsiz)*(sigmas)+addon1;
%         y1=m22*(boxsiz)*(sigmas)+addon2; 
%         E=[];
%         E(:,1)=D(:,1)*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas))+(addon1);
%         E(:,2)=D(:,2)*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas))+(addon2);
%         E(:,3)=D(:,3);
%         E(:,4)=((((E(:,1)-x1).^2)+((E(:,2)-y1).^2)).^(0.5));
%         E1=[]; E2=[];
%         E1=sortrows(E,3);
%         E2=unique(E1,'rows');
%         E2=sortrows(E2,3);
% %         E2(:,5)=i;
%         E2(:,5)=lengthoft(i);
%         E2(:,6)=ii;
%         coorinterface=vertcat(coorinterface,E2);
%     end
%     dummy1=matlab.lang.makeValidName(strcat('coorinterface',num2str(ii)));
%     eval([dummy1 '= coorinterface;']);
%     filename=strcat('D:\Final Data\1ta-data analysis\W2-shiftedinterface',num2str(iii),num2str(ii),'.mat');
     filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas',num2str(iii),num2str(ii),'skip50.mat');
     save(filename,'-v7.3');
end
end
% clear N2 N R timet
% filename=strcat('D:\Final Data\1ta-data analysis\W2\W2-final-0.67-0.15-box-',num2str(m1),'-',num2str(m2),'skip50.mat');
% save(filename,'-v7.3');
