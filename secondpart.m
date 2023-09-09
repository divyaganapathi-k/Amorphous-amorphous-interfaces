L=[];
for i=1:1:(n-(2*t))
   f=find(smoothenedinterface(:,3)==i);
   L(i,1)=i;
   L(i,2)=length(f);
end
f=find(L(:,2)>=88 & L(:,2)<=93);
number=L(f,1:2);
Z=[];
Amplitude2=zeros(360,2);
Amplitude2(:,1)=
for j=1:1:length(number)
    frame=L(j,1);
    f=find(smoothenedinterface(:,3)==frame);
    interface=smoothenedinterface(f,1:2);
    [interface(:,3),interface(:,4)]=cart2pol(interface(:,1),interface(:,2));
    p=polyfit(interface(:,3),interface(:,4),2);
    p1=polyval(p,interface(:,3));
%     interface1=[];
%     [interface1(:,1),interface1(:,2)]=pol2cart(interface(:,3),p1);
%     fluctuations=[];
%     fluctuations(:,1)=interface(:,1)-interface1(:,1);
%     fluctuations(:,2)=interface(:,2)-interface1(:,2);
%     interface(:,4)=interface(:,4)-p1;
    %now to do ak2 analysis on interface(:,3:4)
    s=(pi)/180:(pi)/180:(2*pi);
    Y=interp1(interface(:,3),interface(:,4),s','linear','extrap');
    Y1=interp1(interface(:,3),p1,s','linear','extrap');
    Y=Y-Y1;
    F=fft(Y);
    Z=(abs(F));
    Z=Z.^2;
    Amplitude2(:,2)=Amplitude2(:,2)+Z;
end