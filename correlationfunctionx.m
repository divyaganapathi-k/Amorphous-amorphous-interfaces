clearvars
for ii=1:1:9
    filename=strcat('D:\Newdataanalysis\1boxes\W8\W8unpinned-shiftedinterfacetasigmas1',num2str(ii),'.mat');
    load(filename);
    m1=46;
    m2=25;
    f= AA(:,1)==m1 & AA(:,2)==m2;
    pint=AA(f,3);
    dummy1=matlab.lang.makeValidName(strcat('pint',num2str(ii)));
    eval([dummy1 '= pint;']);
end
B=intersect(pint1,pint2);
C1=intersect(B,pint3);
C2=intersect(C1,pint4);
C3=intersect(C2,pint5);
C4=intersect(C3,pint6);
C5=intersect(C4,pint7);
C6=intersect(C5,pint8);
timet1=intersect(C6,pint9);
f=find(timet1<=3000);
timet1=timet1(f);
clearvars -except timet1 m1 m2
filename=(strcat('D:\Final Data\1ta-data analysis\W8\W8-final-ak2-0.67-0.15-box-',num2str(m1),'-',num2str(m2),'.mat'));
load(filename);
FinalCoordinates=[];
timet=[];
timet=timet1;
for i=1:1:length(timet)
   f1=coorinterface1(:,5)==timet(i);
   f2=coorinterface2(:,5)==timet(i);
   f3=coorinterface3(:,5)==timet(i);
   f4=coorinterface4(:,5)==timet(i);
   f5=coorinterface5(:,5)==timet(i);
   f6=coorinterface6(:,5)==timet(i);
   f7=coorinterface7(:,5)==timet(i);
   f8=coorinterface8(:,5)==timet(i);
   f9=coorinterface9(:,5)==timet(i);
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
Avgintface=zeros(length(theta1),1);
for i=1:1:length(timet)
    F=find(FinalCoordinates(:,3)==timet(i));
    intface=FinalCoordinates(F,1:2);
    intface=sortrows(intface,1);
    Avgintface=Avgintface+intface(:,2);
end
Avgintface=(Avgintface)/(length(f));
meanradius=zeros(length(timet),1);
for i=1:1:length(timet)
    A=find(FinalCoordinates(:,3)==timet(i));
    B=FinalCoordinates(A,1:2);
    meanradius(i,1)=mean(B(:,2));
end
value=2*0.605;
meanr=mean(meanradius);
dummy=find(meanradius>=(meanr-value) & meanradius<=(meanr+value)); 
f=timet(dummy);
meanradius1=meanradius(dummy);
[ff1,ff2]=ismember(FinalCoordinates(:,3),f);
ff3=find(ff1);
FinalCoordinates2=FinalCoordinates(ff1,:);
s=0:(meanr-value)*(pi/180):((meanr-value)*(pi/180)*360);
correlationfunction=zeros(340,2);
correlationfunction(:,1)=(0:(meanr-value)*(pi/180):((meanr-value)*(pi/180)*339))';
for i=1:1:length(f)
    A=find(FinalCoordinates(:,3)==f(i));
    B=FinalCoordinates(A,1:2);
    B(:,2)=B(:,2)-Avgintface;
    l=meanradius1(i);
    B(:,3)=l*B(:,1);
    Y1=interp1(B(:,3),B(:,2),s','linear','extrap');
    for j=1:1:340
        Y2=Y1(11:350);
        Y3=circshift(Y2,-(j-1));
        Y4=Y2.*Y3;
        Y4=Y4(1:(340-j));
        req_value=mean(Y4);
        correlationfunction(j,2)=correlationfunction(j,2)+req_value;
    end
end
correlationfunction(:,2)=correlationfunction(:,2)/length(f);
% correlationfunction(:,2)=correlationfunction(:,2)/correlationfunction(1,2);