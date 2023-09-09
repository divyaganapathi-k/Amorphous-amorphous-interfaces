% %PART_I-To find out the length of the mean interface
meanradius=[];
minangle=[];
maxangle=[];
for i=1:1:(n-(2*t))
    A=find(coorinterface1(:,5)==i);
    B=coorinterface1(A,1:4);
    c1=min(B(:,3));
    c2=max(B(:,3));
    minangle(i)=c1;
    maxangle(i)=c2;
    meanradius(i)=mean(B(:,4));
end
meanr=mean(meanradius);
f=find(meanradius>=(meanr-25) & meanradius<=(meanr+25)); 
d1=max(minangle);
d2=min(maxangle);
% PART_II -To find the mean interface which forms the base line all the
%interfaces
theta=(pi/180):(pi/180):(2*pi);
h1=find(theta>=d1);
h2=find(theta<=d2);
theta2=theta(h1(1):h2(end));
ll=length(theta2);
Avgintface=zeros(length(theta2),1);
for i=1:1:length(f)
    F=find(coorinterface1(:,5)==f(i));
    intface=coorinterface1(F,3:4);
    intface=sortrows(intface,1);
    [dummy1,ia,ic]=unique(intface(:,1));
    intface1=[];
    intface1=intface(ia,1:2);
    intface2=interp1(intface1(:,1),intface1(:,2),theta2','linear','extrap');
    Avgintface=Avgintface+intface2;
end
Avgintface=(Avgintface)/(length(f));

%PART_II -To find Ak2
Amplitude2=zeros(length(theta2),2);
Amplitude2(:,1)=(theta2(1)/(meanr-25)):((pi/180)/(meanr-25)):((theta2(end)/(meanr-25)));
% Amplitude2(:,1)=(1/(275.77-25)):(1/(275.77-25)):(360*(1/(275.77-25)));
j=0;
for i=1:1:length(f)
    A=find(coorinterface1(:,5)==f(i));
    B=coorinterface1(A,3:4);
    B=sortrows(B,1);
    [dummy1,ia,ic]=unique(B(:,1));
%     B1=[];
    B1=B(ia,1:2);
    BB1=[];
    BB1(:,1)=theta2';
    BB1(:,2)=interp1(B1(:,1),B1(:,2),theta2','linear','extrap');
    l=meanradius(i);
    f1=find(l*BB1(:,1)<=((meanr-25)*2*pi));
    C=[];
    C(:,1:2)=BB1(f1,1:2);
%     [f,ia,ic]=unique(C(:,1));
%     D=[];
%     D(:,1:2)=C(ia,1:2);
    C(:,1)=l*C(:,1);
    len=length(C(:,1));
    D=[];
    D=Avgintface(1:len);
    C(:,2)=C(:,2)-D;
    s=((meanr-25)*(theta2(1)):((meanr-25)*pi)/180:((meanr-25)*theta2(end)));
%     s=((275.77-25)*pi)/180:((275.77-25)*pi)/180:((275.77-25)*2*pi);
    Y1=interp1(C(:,1),C(:,2),s','linear','extrap');
    F=fft(Y1);
    Z=(abs(F));
    Z=Z.^2;
    Amplitude2(:,2)=Amplitude2(:,2)+Z;
    j=j+1;
end
% Amplitude2(:,1)=s';