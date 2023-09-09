clearvars
for ii=1:1:9
%     load(strcat('E:\Shreyas-Dataanalysis\Analysis\Data-15\Data-151',num2str(i),'-2.mat'));
%     load(strcat('D:\Final Data\1ta-data analysis\W5\W5final-shiftedinterfaceta1',num2str(ii),'.mat'));
%     load(strcat('D:\Final Data\W5\W5final-shiftedinterface7',num2str(ii),'.mat'));
    filename=strcat('D:\Newdataanalysis\1boxes\W5\W5unpinned-shiftedinterfacetasigmas1',num2str(ii),'.mat');
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
% f=find(timet1<=3000);
% timet1=timet1(f);
clearvars -except timet1 m1 m2
filename=(strcat('D:\Final Data\1ta-data analysis\W5\W5-final-ak2-0.67-0.15-box-',num2str(m1),'-',num2str(m2),'.mat'));
% filename=('D:\Final Data\W5\W5-7t-final.mat');
load(filename);
FinalCoordinates=[];
theta1=(pi/180):(pi/180):(2*pi);
% coorinterface1(:,4)=coorinterface1(:,4)/20.66;
% coorinterface2(:,4)=coorinterface2(:,4)/20.66;
% coorinterface3(:,4)=coorinterface3(:,4)/20.66;
% coorinterface4(:,4)=coorinterface4(:,4)/20.66;
% coorinterface5(:,4)=coorinterface5(:,4)/20.66;
% coorinterface6(:,4)=coorinterface6(:,4)/20.66;
% coorinterface7(:,4)=coorinterface7(:,4)/20.66;
% coorinterface8(:,4)=coorinterface8(:,4)/20.66;
% coorinterface9(:,4)=coorinterface9(:,4)/20.66;
timet=[];
timet=timet1;
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
meanradius1=meanr(dummy);
[ff1,ff2]=ismember(FinalCoordinates(:,3),f);
ff3=find(ff1);
FinalCoordinates2=FinalCoordinates(ff1,:);
Avgintface=zeros(length(theta1),1);
for i=1:1:(length(f))
    F=find(FinalCoordinates(:,3)==f(i));
    intface=FinalCoordinates(F,1:2);
    intface=sortrows(intface,1);
    Avgintface=Avgintface+intface(:,2);
end
Avgintface=(Avgintface)/(length(f));
%to determine the largest value of theta to be considered
rel_values=[];
C=zeros(length(f),2);
for i=1:1:(length(f))
    A=find(FinalCoordinates(:,3)==f(i));
    B=FinalCoordinates(A,1:2);
    B=sortrows(B,1);
    l=meanradius1(i);
    f1=find(l*B(:,1)<=((meanr-value)*2*pi));
    C(i,1)=i;
    C(i,2)=length(f1);
end
%to get time frames of relevant interfaces 
thetaend=min(C(:,2));
dummy1=diff(f);
dummytemp=find(dummy1~=1);
dummy2=zeros((length(dummytemp)+1),1);
dummy2(1:end-1)=dummytemp;
dummy2(end)=length(dummy);
dummy21=dummy2+1;
dummy22=zeros(length(dummy2),1);
dummy22(1,1)=f(1);
dummy22(2:end)=f(dummy21(1:end-1));
if isempty(dummy2)==0
    dummy3=zeros(length(dummy2)+1,1);
    dummy3(1,1)=0;
    dummy3(2:end,1)=dummy2;
    dummy4=diff(dummy3);
    m=max(dummy4);
    f1=find(dummy4>=m/2);
    timecoor=zeros(length(f1),3);
    %starting and ending frames
    for i=1:1:length(f1)
            timecoor(i,1)=dummy22(f1(i));
            timecoor(i,2)=dummy22(f1(i))+dummy4(f1(i))-1;
    end
    timecoor(:,3)=timecoor(:,2)-timecoor(:,1)+1;
else
    timecoor(1,1)=1;
    timecoor(1,2)=length(dummy);
    timecoor(1,3)=length(dummy);
    f1=1;
    m=length(dummy);
end
totalframes=sum(timecoor(:,3));
correlation=zeros(floor(m/2),(length(f1)+1));
correlation(:,1)=(0:1:(floor(m/2)-1))';
for j=1:1:length(f1)
    f2=find(FinalCoordinates(:,3)>=timecoor(j,1) & FinalCoordinates(:,3)<=timecoor(j,2));
    FinalCoordinates1=FinalCoordinates(f2,:);
    for i=6:1:thetaend
        ff=find(FinalCoordinates1(:,1)==theta1(i));
        CoordinateR=FinalCoordinates1(ff,2);
        data=autocorr(CoordinateR,(floor(m/2)-1));
        correlation(:,j+1)=correlation(:,j+1)+data;
    end
    correlation(:,j+1)=correlation(:,j+1)*((timecoor(j,2)-timecoor(j,1)+1)/totalframes);
    correlation(:,j+1)=correlation(:,j+1)/(thetaend-5);
end
correlation1=zeros(floor(m/2),2);
correlation1(:,1)=(0:1:(floor(m/2)-1))';
if length(f1)>1
    correlation1(:,2)=sum(correlation(:,2:end),2);
else
    correlation1(:,2)=correlation(:,2);
end
