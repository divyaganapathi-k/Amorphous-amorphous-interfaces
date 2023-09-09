%to calculate psd for the defined interface
%first part
% to calculate the mean length of interface defined at every frame
% mostmoball=[];
% mostmoball=leastoverlapall;
mostmoball=smoothenedinterface;
Amplitude2=zeros(360,2);
meanradius=[];
for i=1:1:n-(2*t)
    A=find(mostmoball(:,5)==i);
    B=mostmoball(A,1:4);
    meanradius(i)=mean(B(:,4));
end
r=min(meanradius);
Amplitude2(:,1)=(1/r):(1/r):(360*(1/r));
for i=1:1:n-(2*t)
    A=find(mostmoball(:,5)==i);
    B=mostmoball(A,1:4);
    l=meanradius(i);
    f=find(l*B(:,3)<=(r*2*pi));
    C=[];
    C(:,1:2)=B(f,3:4);
    [f,ia,ic]=unique(C(:,1));
    D=[];
    D(:,1:2)=C(ia,1:2);
    D(:,1)=l*D(:,1); 
    s=(r*pi)/180:(r*pi)/180:(r*2*pi);
    Y=interp1(D(:,1),D(:,2),s','linear','extrap');
    Y=Y-l;
    F=fft(Y);
    Z=(abs(F));
    Z=Z.^2;
    Amplitude2(:,2)=Amplitude2(:,2)+Z;
end
