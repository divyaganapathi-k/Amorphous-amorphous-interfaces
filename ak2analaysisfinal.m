%take smoothenedinterface from overlapfngridingxyscan3 and use that as the
%interface to work with
%use only the radial coordinates
distances=[];
interfaces=[];
for i=1:1:(n-(2*t))
    interface1=[];
    f=find(smoothenedinterface(:,5)==i);
    interface1(:,1:2)=smoothenedinterface(f,3:4);
    interface1=sortrows(interface1,1);
    p=polyfit(interface1(:,1),interface1(:,2),2);
    p1=polyval(p,interface1(:,1));
%     p=sgolayfilt(interface1(:,2),2,25);
    interface1(:,3)=p1;
    %this matrix contains the parameters in radial coordinates
    dummy=[];
    dummy=circshift(interface1(:,1),1);
    interface1(:,4)=interface1(:,1)-dummy; %this contains delta theta
    f=find(interface1(:,4)<0);
    interface1(f,4)=0;
    interface1(:,5)=(interface1(:,3).*interface1(:,4));
    interface1(:,6)=i;
    distances(:,i)=sum(interface1(:,5));
    interfaces=vertcat(interfaces,interface1);
end
l=min(distances);
interface1=[];
interfacefinal=[];
p=1;
for i=1:1:(n-(2*t))
    m=floor(distances(i)/l);
    f=find(interfaces(:,6)==i);
    interface1=interfaces(f,1:5);
    i
%     for j=1:1:m
        lengthofinterface=[];
%         interface3=[];
        lengthofinterface=cumsum(interface1(:,5));
        h=find(lengthofinterface>l);
        if isempty(h)==0
            h1=min(h);
            interface2=interface1(1:h1,1:5);
            interface3=zeros(h1,2);
            interface3(:,1)=lengthofinterface(1:h1);
            interface3(:,2)=interface2(1:h1,2)-interface2(1:h1,3);
            interface3(:,3)=p;
%             interface1=interface1((h1+1):end,1:5);
            p
            interfacefinal=vertcat(interfacefinal,interface3);
            p=p+1;
%         end
    end
end
s=1:1:l;
k=((2*pi)./s);
Amplitude2=zeros(length(s),2);
Amplitude2(:,1)=k;
for i=1:1:p-1
    f=find(interfacefinal(:,3)==i);
    interface4=interfacefinal(f,1:2);
    [ia,ib,ic]=unique(interface4(:,1));
    interface5=interface4(ib,1:2);
    Y=interp1(interface5(:,1),interface5(:,2),s','linear','extrap');
    F=fft(Y);
    Z=(abs(F));
    Z=Z.^2;
    Amplitude2(:,2)=Amplitude2(:,2)+Z;
end