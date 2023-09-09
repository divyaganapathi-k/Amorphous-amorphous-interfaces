theta=(pi/180):(pi/180):(2*pi);
theta1=theta;
j=1;
timet=[];
FinalCoordinates=[];
for i=1:1:(n-(2*t))
   f1=find(coorinterface1(:,5)==i);
   if isempty(f1)==1
       continue
   else
   f2=find(coorinterface2(:,5)==i);
   if isempty(f2)==1
       continue
   else
   f3=find(coorinterface3(:,5)==i);
   if isempty(f3)==1
       continue
   else
   f4=find(coorinterface4(:,5)==i);
   if isempty(f4)==1
        continue
   else
   f5=find(coorinterface5(:,5)==i);
   if isempty(f5)==1
        continue
   else
   f6=find(coorinterface6(:,5)==i);
   if isempty(f6)==1
       continue
   else
   f7=find(coorinterface7(:,5)==i);
   if isempty(f7)==1
        continue
   else
   f8=find(coorinterface8(:,5)==i);
   if isempty(f8)==1
        continue
   else
   f9=find(coorinterface9(:,5)==i);
   if isempty(f9)==1
        continue
   else
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
   finalcoordinates(:,3)=i;
   FinalCoordinates=vertcat(FinalCoordinates,finalcoordinates);
   timet(j)=i;
   j=j+1;
   end
   end
   end
   end
   end
   end
   end
   end
   end
end

meanradius=[];
for i=1:1:length(timet)
    A=find(FinalCoordinates(:,3)==timet(i));
    B=FinalCoordinates(A,1:2);
    meanradius(i,1)=mean(B(:,2));
    meanradius(i,2)=timet(i);
end
meanr=mean(meanradius(:,1));
f=find(meanradius(:,1)>=(meanr-25) & meanradius(:,1)<=(meanr+25)); 
nooffinalimages=length(f);
theta=(pi/180):(pi/180):(2*pi);
Avgintface=zeros(length(theta1),1);
for i=1:1:(length(f))
    F=find(FinalCoordinates(:,3)==meanradius(f(i),2));
    intface=FinalCoordinates(F,1:2);
    intface=sortrows(intface,1);
    [dummy1,ia,ic]=unique(intface(:,1));
    intface1=intface(ia,1:2);
    intface2=interp1(intface1(:,1),intface1(:,2),theta','linear','extrap');
    Avgintface=Avgintface+intface2;
end
Avgintface=(Avgintface)/(length(f));

Amplitude2=zeros(length(theta1),2);
Amplitude2(:,1)=(1/(meanr-25)):(1/(meanr-25)):((360)*(1/(meanr-25)));
j=0;
for i=1:1:(length(f))
    A=find(FinalCoordinates(:,3)==meanradius(f(i),2));
    B=FinalCoordinates(A,1:2);
    B=sortrows(B,1);
    [dummy1,ia,ic]=unique(B(:,1));
    B1=B(ia,1:2);
    BB1(:,1)=theta';
    BB1(:,2)=interp1(B1(:,1),B1(:,2),theta','linear','extrap');
    l=meanradius(i);
    f1=find(l*BB1(:,1)<=((meanr-25)*2*pi));
    C=[];
    C(:,1:2)=BB1(f1,1:2);
    C(:,1)=l*C(:,1);
    len=length(C(:,1));
    D=[];
    D=Avgintface(1:len);
    C(:,2)=C(:,2)-D;
    s=((meanr-25)*pi)/180:((meanr-25)*pi)/180:((meanr-25)*2*pi);
    Y1=interp1(C(:,1),C(:,2),s','linear','extrap');
    F=fft(Y1);
    Z=(abs(F));
    Z=Z.^2;
    Amplitude2(:,2)=Amplitude2(:,2)+Z;
    j=j+1;
end