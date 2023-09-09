clearvars
% theta=(pi/180):(pi/180):(2*pi);
% minimumangles=[];
% maximumangles=[];
% minangle=[];
% maxangle=[];
% for i=1:1:(n-(2*t))
%     A=find(coorinterface1(:,5)==i);
%     B=coorinterface1(A,3);
%     c1=min(B);
%     c2=max(B);
%     minangle(i)=c1;
%     maxangle(i)=c2;
% end
% d1=max(minangle);
% d2=min(maxangle);
% minimumangles=vertcat(minimumangles,d1);
% maximumangles=vertcat(maximumangles,d2);
% minangle=[];
% maxangle=[];
% for i=1:1:(n-(2*t))
%     A=find(coorinterface2(:,5)==i);
%     B=coorinterface2(A,3);
%     c1=min(B);
%     c2=max(B);
%     minangle(i)=c1;
%     maxangle(i)=c2;
% end
% d1=max(minangle);
% d2=min(maxangle);
% minimumangles=vertcat(minimumangles,d1);
% maximumangles=vertcat(maximumangles,d2);
% minangle=[];
% maxangle=[];
% for i=1:1:(n-(2*t))
%     A=find(coorinterface3(:,5)==i);
%     B=coorinterface3(A,3);
%     c1=min(B);
%     c2=max(B);
%     minangle(i)=c1;
%     maxangle(i)=c2;
% end
% d1=max(minangle);
% d2=min(maxangle);
% minimumangles=vertcat(minimumangles,d1);
% maximumangles=vertcat(maximumangles,d2);
% minangle=[];
% maxangle=[];
% for i=1:1:(n-(2*t))
%     A=find(coorinterface4(:,5)==i);
%     B=coorinterface4(A,3);
%     c1=min(B);
%     c2=max(B);
%     minangle(i)=c1;
%     maxangle(i)=c2;
% end
% d1=max(minangle);
% d2=min(maxangle);
% minimumangles=vertcat(minimumangles,d1);
% maximumangles=vertcat(maximumangles,d2);
% minangle=[];
% maxangle=[];
% for i=1:1:(n-(2*t))
%     A=find(coorinterface5(:,5)==i);
%     B=coorinterface5(A,3);
%     c1=min(B);
%     c2=max(B);
%     minangle(i)=c1;
%     maxangle(i)=c2;
% end
% d1=max(minangle);
% d2=min(maxangle);
% minimumangles=vertcat(minimumangles,d1);
% maximumangles=vertcat(maximumangles,d2);
% minangle=[];
% maxangle=[];
% for i=1:1:(n-(2*t))
%     A=find(coorinterface6(:,5)==i);
%     B=coorinterface6(A,3);
%     c1=min(B);
%     c2=max(B);
%     minangle(i)=c1;
%     maxangle(i)=c2;
% end
% d1=max(minangle);
% d2=min(maxangle);
% minimumangles=vertcat(minimumangles,d1);
% maximumangles=vertcat(maximumangles,d2);
% minangle=[];
% maxangle=[];
% for i=1:1:(n-(2*t))
%     A=find(coorinterface7(:,5)==i);
%     B=coorinterface7(A,3);
%     c1=min(B);
%     c2=max(B);
%     minangle(i)=c1;
%     maxangle(i)=c2;
% end
% d1=max(minangle);
% d2=min(maxangle);
% minimumangles=vertcat(minimumangles,d1);
% maximumangles=vertcat(maximumangles,d2);
% minangle=[];
% maxangle=[];
% for i=1:1:(n-(2*t))
%     A=find(coorinterface8(:,5)==i);
%     B=coorinterface8(A,3);
%     c1=min(B);
%     c2=max(B);
%     minangle(i)=c1;
%     maxangle(i)=c2;
% end
% d1=max(minangle);
% d2=min(maxangle);
% minimumangles=vertcat(minimumangles,d1);
% maximumangles=vertcat(maximumangles,d2);
% minangle=[];
% maxangle=[];
% for i=1:1:(n-(2*t))
%     A=find(coorinterface9(:,5)==i);
%     B=coorinterface9(A,3);
%     c1=min(B);
%     c2=max(B);
%     minangle(i)=c1;
%     maxangle(i)=c2;
% end
% d1=max(minangle);
% d2=min(maxangle);
% minimumangles=vertcat(minimumangles,d1);
% maximumangles=vertcat(maximumangles,d2);
% d11=max(minimumangles);
% d22=min(maximumangles);
% theta1=d11:(pi/180):d22;
clearvars
for ii=1:1:9
    filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas1',num2str(ii),'.mat');
%     filename=strcat('D:\Newdataanalysis\W2\W2-finalshiftedinterface1',num2str(ii),'.mat');
%     filename=strcat('D:\Final Data\1ta-data analysis\W2\W2final-shiftedinterfaceta1',num2str(ii),'.mat');
%     filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(ii),'.mat');
    load(filename);
    m1=58;
    m2=33;
    f=find(AA(:,1)==m1 & AA(:,2)==m2);
    pint=AA(f,3);
    dummy1=matlab.lang.makeValidName(strcat('pint',num2str(ii)));
    eval([dummy1 '= pint;']);
end
C=intersect(pint1,pint2);
C1=intersect(C,pint3);
C2=intersect(C1,pint4);
C3=intersect(C2,pint5);
C4=intersect(C3,pint6);
C5=intersect(C4,pint7);
C6=intersect(C5,pint8);
timet1=intersect(C6,pint9);
clearvars -except timet1 m1 m2
m1=58;
m2=33;
filename=(strcat('D:\Final Data\1ta-data analysis\W2\W2-final-0.67-0.15-box-',num2str(m1),'-',num2str(m2),'point85.mat'));
% filename=(strcat('D:\Final Data\1ta-data analysis\W2\W2-final-0.67-0.15-box-',num2str(m1),'-',num2str(m2),'forimage.mat'));
load(filename);
FinalCoordinates=[];
% for j1=1:1:9
% %     filename=strcat('D:\Newdataanalysis\1boxes\W2\W2-shiftedinterface1sigmas1',num2str(j1),'-58-24.mat');
%     filename=strcat('E:\1boxes\W2\W2-shiftedinterface1sigmas1',num2str(j1),'-58-17.mat');
%     load(filename);
%     dummy1=matlab.lang.makeValidName(strcat('coorinterface',num2str(j1)));
%     eval([dummy1 '= coorinterface;']);
% end
theta1=(pi/180):(pi/180):(2*pi);
coorinterface1(:,4)=coorinterface1(:,4)/20.66;
coorinterface2(:,4)=coorinterface2(:,4)/20.66;
coorinterface3(:,4)=coorinterface3(:,4)/20.66;
coorinterface4(:,4)=coorinterface4(:,4)/20.66;
coorinterface5(:,4)=coorinterface5(:,4)/20.66;
coorinterface6(:,4)=coorinterface6(:,4)/20.66;
coorinterface7(:,4)=coorinterface7(:,4)/20.66;
coorinterface8(:,4)=coorinterface8(:,4)/20.66;
coorinterface9(:,4)=coorinterface9(:,4)/20.66;
timet=[];
% timet=lengthoft;
timet=timet1;
% %(n-(2*t))
for i=1:1:length(timet)
   f1=find(coorinterface1(:,5)==timet(i));
   f2=find(coorinterface2(:,5)==timet(i));
   f3=find(coorinterface3(:,5)==timet(i));
   f4=find(coorinterface4(:,5)==timet(i));
   f5=find(coorinterface5(:,5)==timet(i));
   f6=find(coorinterface6(:,5)==timet(i));
   f7=find(coorinterface7(:,5)==timet(i));
   f8=find(coorinterface8(:,5)==timet(i));
   f9=find(coorinterface9(:,5)==timet(i));
%    coor1=[]; coor2=[]; coor3=[]; coor4=[]; coor5=[];
   coor1=coorinterface1(f1,3:4);
   coor2=coorinterface2(f2,3:4);
   coor3=coorinterface3(f3,3:4);
   coor4=coorinterface4(f4,3:4);
   coor5=coorinterface5(f5,3:4);
   coor6=coorinterface6(f6,3:4);
   coor7=coorinterface7(f7,3:4);
   coor8=coorinterface8(f8,3:4);
   coor9=coorinterface9(f9,3:4);
   [~,b,~]=unique(coor1(:,1));
   coor11=coor1(b,1:2);
   [~,b,~]=unique(coor2(:,1));
   coor22=coor2(b,1:2);
   [~,b,~]=unique(coor3(:,1));
   coor33=coor3(b,1:2);
   [~,b,~]=unique(coor4(:,1));
   coor44=coor4(b,1:2);
   [~,b,~]=unique(coor5(:,1));
   coor55=coor5(b,1:2);
   [~,b,~]=unique(coor6(:,1));
   coor66=coor6(b,1:2);
   [~,b,~]=unique(coor7(:,1));
   coor77=coor7(b,1:2);
   [~,b,~]=unique(coor8(:,1));
   coor88=coor8(b,1:2);
   [~,b,~]=unique(coor9(:,1));
   coor99=coor9(b,1:2);
   coordinates=[];
   coordinates(:,1)=interp1(coor11(:,1),coor11(:,2),theta1','linear','extrap');
   coordinates(:,2)=interp1(coor22(:,1),coor22(:,2),theta1','linear','extrap');
   coordinates(:,3)=interp1(coor33(:,1),coor33(:,2),theta1','linear','extrap');
   coordinates(:,4)=interp1(coor44(:,1),coor44(:,2),theta1','linear','extrap');
   coordinates(:,5)=interp1(coor55(:,1),coor55(:,2),theta1','linear','extrap');
   coordinates(:,6)=interp1(coor66(:,1),coor66(:,2),theta1','linear','extrap');
   coordinates(:,7)=interp1(coor77(:,1),coor77(:,2),theta1','linear','extrap');
   coordinates(:,8)=interp1(coor88(:,1),coor88(:,2),theta1','linear','extrap');
   coordinates(:,9)=interp1(coor99(:,1),coor99(:,2),theta1','linear','extrap');
   finalcoordinates=[];
   finalcoordinates(:,1)=theta1';
   finalcoordinates(:,2)=mean(coordinates,2);
   finalcoordinates(:,3)=timet(i);
   FinalCoordinates=vertcat(FinalCoordinates,finalcoordinates);
end
% filename=(strcat('D:\Newdataanalysis\mosaic\W2\W2-',num2str(m1),'-',num2str(m2),'.mat'));
% save(filename,'FinalCoordinates');
% meanradius=zeros(length(timet),1);
% % (n-(2*t))
for i=1:1:length(timet)
    A=find(FinalCoordinates(:,3)==timet(i));
    B=FinalCoordinates(A,1:2);
    meanradius(i,1)=mean(B(:,2));
end
value=0.605*2;
meanr=mean(meanradius);
f=find(meanradius>=(meanr-value) & meanradius<=(meanr+value)); 
theta=(pi/180):(pi/180):(2*pi);
Avgintface=zeros(length(theta1),1);
for i=1:1:(length(f))
    F=find(FinalCoordinates(:,3)==timet(i));
    intface=FinalCoordinates(F,1:2);
    intface=sortrows(intface,1);
    Avgintface=Avgintface+intface(:,2);
end
Avgintface=(Avgintface)/(length(f));
s=((meanr-value)*3*(pi/180)):((meanr-value)*(pi/180)):((meanr-value)*((2*pi)-(3*(pi/180)))); 
Amplitude2=zeros(178,2);
% Amplitude2(:,1)=(1/(meanr-value)):(1/(meanr-value)):(360*(1/(meanr-value)));
% Amplitude2(:,1)=(2*pi)./s;
k_max = 355/(2*((2*pi)-pi/30)*(meanr-value));
Amplitude2(:,1)= ((0:177)*k_max/180)';
j=0;
fluctuations=[];
fluctuations1=[];
% (length(f))
for i=1:1:length(timet)
%     f(i)
    A=find(FinalCoordinates(:,3)==timet(i));
    B=FinalCoordinates(A,1:2);
    B=sortrows(B,1);
    l=meanradius(i);
    f1=find(l*B(:,1)<=((meanr-value)*2*pi));
    C=[];
    C(:,1:2)=B(f1,1:2);
%     C(:,1:2)=B(:,1:2);
    C(:,1)=l*C(:,1);
%     f2=find(C(:,1)>=((pi/180)*3*(meanr-value))& C(:,1)<=(((2*pi)-(3*(pi/180)))*(meanr-value)));
%     C=C(f2,1:2);
    len=length(C(:,1));
    D=Avgintface(1:len);
%     D=Avgintface;
    C(:,2)=C(:,2)-D;
    Y1=interp1(C(:,1),C(:,2),s','linear','extrap');
    B(:,2)=B(:,2)-Avgintface;
%     Y11=smooth(Y1,5);
    F=fft(Y1);
    Z=(abs(F/length(Y1)));
    Z=Z.^2;
    Amplitude2(:,2)=Amplitude2(:,2)+Z(1:178,:);
    j=j+1;
    C(:,3)=i;
    fluctuations1=vertcat(fluctuations1,C);
    fluctuations=vertcat(fluctuations,B(4:358,2));
%     fluctuations=vertcat(fluctuations,Y1);
end
fluctuations2=fluctuations-smooth(fluctuations,500);
Amplitude2(:,2)=Amplitude2(:,2)/length(f);
% length1=zeros(3030,1);
% for i=1:1:3030
%     f=find(fluctuations(:,3)==i);
%     length1(i,1)=length(f);
% end
filename=strcat('D:\Final Data\1ta-data analysis\W2\W2-final-ak2-0.67-0.15-box-',num2str(m1),'-',num2str(m2),'point85.mat');
save(filename,'-v7.3');