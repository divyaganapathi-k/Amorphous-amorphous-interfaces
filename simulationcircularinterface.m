%to simulate circular random points around
%first the range of rs allowed
%Part_I-To generate interface
R=476:1:500;
n=10000;
finalinterface=[];
for i=1:1:n
    a=randi(25);
    r=R(a);
    Interface=zeros(360,3);
    Interface(:,1)=(pi/180):(pi/180):2*pi;
    X=rand(360,1);
    X=X*2*r;
    Interface(:,2)=X;
    Interface(:,3)=i;
    finalinterface=vertcat(finalinterface,Interface);
end

%PART_I-To find out the length of the mean interface
meanradius=[];
for i=1:1:n
    A=find(finalinterface(:,3)==i);
    B=finalinterface(A,1:2);
    meanradius(i)=mean(B(:,2));
end
meanr=mean(meanradius);
f=find(meanradius>=(meanr-25) & meanradius<=(meanr+25));

% PART_II -To find the mean interface which forms the base line all the
%interfaces
theta=(pi/180):(pi/180):(2*pi);
Avgintface=zeros(360,1);
for i=1:1:length(f)
    F=find(finalinterface(:,3)==f(i));
    intface=finalinterface(F,1:2);
    intface=sortrows(intface,1);
    [dummy1,ia,ic]=unique(intface(:,1));
    intface1=[];
    intface1=intface(ia,1:2);
    intface2=interp1(intface1(:,1),intface1(:,2),theta','linear','extrap');
    Avgintface=Avgintface+intface2;
end
Avgintface=(Avgintface)/(length(f));

%PART_II -To find Ak2
Amplitude2=zeros(360,2);
Amplitude2(:,1)=(1/r):(1/r):(360*(1/r));
j=0;
for i=1:1:length(f);
    A=find(finalinterface(:,3)==f(i));
    B=finalinterface(A,1:2);
    B=sortrows(B,1);
    [dummy1,ia,ic]=unique(B(:,1));
%     B1=[];
    B1=B(ia,1:2);
    BB1(:,1)=theta';
    BB1(:,2)=interp1(B1(:,1),B1(:,2),theta','linear','extrap');
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
    s=((meanr-25)*pi)/180:((meanr-25)*pi)/180:((meanr-25)*2*pi);
    Y1=interp1(C(:,1),C(:,2),s','linear','extrap');
    F=fft(Y1);
    Z=(abs(F));
    Z=Z.^2;
    Amplitude2(:,2)=Amplitude2(:,2)+Z;
    j=j+1;
end