theta=(pi/180):(pi/180):(2*pi);
theta1=theta;
j=1;
timet=[];
FinalCoordinates=[];
for i=1:1:(n-(2*t))
   f1=find(coorinterface(:,5)==i);
   if isempty(f1)==1
       continue
   else
   coor1=coorinterface(f1,3:4);
   [~,b,~]=unique(coor1(:,1));
   coor11=coor1(b,1:2);
   coordinates=[];
   coordinates=interp1(coor11(:,1),coor11(:,2),theta1','linear','extrap');
   finalcoordinates=[];
   finalcoordinates(:,1)=theta1';
   finalcoordinates(:,2)=coordinates;
   finalcoordinates(:,3)=i;
   FinalCoordinates=vertcat(FinalCoordinates,finalcoordinates);
   timet(j)=i;
   j=j+1;
   end
end
meanradius=[];
% length(timet)
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
    Y1=Y1;
    F=fft(Y1);
    Z=(abs(F));
    Z=Z.^2;
    Amplitude2(:,2)=Amplitude2(:,2)+Z;
    j=j+1;
end