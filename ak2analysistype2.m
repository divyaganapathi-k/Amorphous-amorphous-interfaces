n=max(smoothenedinterface(:,5));
fluctuations=[];
meaninterfacelength=[];
interface=[];
interface1=[];
mean_interface=[];
for i=1:1:(n-(2*t))
    f=find(smoothenedinterface(:,5)==i);
    interface=smoothenedinterface(f,1:2); % cartesian coordinates
    interface1=smoothenedinterface(f,3:4); % polar coordinates
%     interface1=[];
%     [interface1(:,1),interface1(:,2)]=cart2pol(interface(:,1),interface(:,2));
    p=polyfit(interface1(:,1),interface1(:,2),2);
    p1=polyval(p,interface1(:,1));
%     X=[]; Y=[];
%     [X,Y]=pol2cart(interface1(:,1),p1);
%     fluctuations1=[];
%     fluctuations1(:,1)=interface(:,1)-X;
%     fluctuations1(:,2)=interface(:,2)-Y;
%     fluctuations1(:,3)=i;
%     shiftedinterface=circshift(interface,-1);
%     distances=((interface(:,1)-shiftedinterface(:,1)).^2+(interface(:,2)-shiftedinterface(:,2)).^2).^(0.5);
%     meaninterfacelength(i,1)=sum(distances);
    meaninterface=zeros(length(interface1(:,1)),2);
    [meaninterface(:,1),meaninterface(:,2)]=pol2cart(interface1(:,1),p1);
    meaninterface(:,1)=meaninterface(:,1)+x1;
    meaninterface(:,2)=meaninterface(:,2)+y1;
    shiftedmeaninterface=circshift(meaninterface,-1);
    distances=((meaninterface(:,1)-shiftedmeaninterface(:,1)).^2+(meaninterface(:,2)-shiftedmeaninterface(:,2)).^2).^(0.5);
    meaninterfacelength(i,1)=sum(distances);
    meaninterface(:,3)=interface1(:,1);
    meaninterface(:,4)=p1;
    meaninterface(:,5)=interface1(:,2);
    meaninterface(:,6)=i;
    distances=[];
%     dummy=[];
% %     dummy(:,1)=interface1(:,1);
% %     dummy(:,2)=p1;
%     dummy(:,1:5)=meaninterface(:,1:5);
%     dummy(:,6)=i;
    mean_interface=vertcat(mean_interface,meaninterface);
%     fluctuations=vertcat(fluctuations,fluctuations1);
end
minmeaninterfacelength=min(meaninterfacelength);
q=1;
smoothinterface=[];
INTERFACEVALUE=[];
for j=1:1:(n-(2*t))
    m=floor(meaninterfacelength(j,1)/(minmeaninterfacelength));
    %     if meaninterfacelength(j,1)==minmeaninterfacelength
    %             interface(:,1:2)=smoothendinterface(:,3:4);
    %             interface(:,3)=q;
    %             q=q+1;
    %             smoothinterface=vertcat(smoothinterface,interface); 
    %     else
    f=find(mean_interface(:,6)==j);
    interface1=[];
    interface2=[];
    interface1(:,1:5)=mean_interface(f,1:5);
%     interface1=sortrows(interface1,3);
    interface2(:,1:2)=circshift(interface1(:,1:2),-1);
    fluctuations=[];
    for k=1:1:m
        distance=((interface1(:,1)-interface2(:,1)).^2+(interface1(:,2)-interface2(:,2)).^2).^(0.5);
        length1=cumsum(distance);
        h=find(length1>=minmeaninterfacelength);
        a=min(h);
        fluctuations(:,1)=length1(1:a); %this contains value of arclength
        fluctuations(:,2)= interface1(1:a,4); % this contains mean r
        fluctuations(:,3)=interface1(1:a,5);%this contains the actual r
        fluctuations(:,4)=fluctuations(:,3)-fluctuations(:,2);%this contains the fluctuations of r
        fluctuations(:,5)=q;
        INTERFACEVALUE=vertcat(INTERFACEVALUE,fluctuations);
        q=q+1;
        interface11=[];
        interface11(:,1:5)=interface1(a:end,1:5);
        interface1=[]; interface2=[]; fluctuations=[];
        interface1=interface11;
        interface2(:,1:2)=circshift(interface1(:,1:2),-1);
    end
    %the values that has to be plotted is fluctuations(:,1)(which acts as
    %x) and flucutuations(:,4)(which acts as y)
%     end
end
s=1:1:minmeaninterfacelength;
% s=((0.5)*(sigmas)):((0.5)*(sigmas)):minmeaninterfacelength;
Amplitude2=zeros(length(s),2);
Amplitude2(:,1)=(2*pi)./s;
Amplitude2(:,1)=flipud(Amplitude2(:,1));
interface4=[];
%type1
for i=1:1:q-1
    f=find(INTERFACEVALUE(:,5)==i);
    interface41=INTERFACEVALUE(f,1);
    interface42=INTERFACEVALUE(f,4);
    [dummy, ia, ic]=unique(interface41);
    interface5=zeros(length(ia),2);
    interface5(:,1)=interface41(ia,1);
    interface5(:,2)=interface42(ia,1);
    Y=interp1(interface5(:,1),interface5(:,2),s','linear','extrap');
    F=fft(Y);
    Z=(abs(F));
    Z=Z.^2;
    Amplitude2(:,2)=Amplitude2(:,2)+Z;
end
%type2
% for i=1:1:q-1
%     f=find(INTERFACEVALUE(:,5)==i);
%     interface41=INTERFACEVALUE(f,1);
%     interface42=INTERFACEVALUE(f,2);
%     interface43=INTERFACEVALUE(f,3);
%     [dummy, ia, ic]=unique(interface41);
%     interface5=zeros(length(ia),3);
%     interface5(:,1)=interface41(ia,1);
%     interface5(:,2)=interface42(ia,1);
%     interface5(:,3)=interface43(ia,1);
%     Y1=interp1(interface5(:,1),interface5(:,2),s','linear','extrap');
%     Y2=interp1(interface5(:,1),interface5(:,3),s','linear','extrap');
%     Y=Y2-Y1;
%     F=fft(Y);
%     Z=(abs(F));
%     Z=Z.^2;
%     Amplitude2(:,2)=Amplitude2(:,2)+Z;
% end