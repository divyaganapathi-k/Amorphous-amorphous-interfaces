%to get the baseline first which decides the length of the interface
n=max(smoothenedinterface(:,5));
fluctuations=[];
meaninterface=[];
meaninterfacelength=[];
for i=1:1:n
    i
    f=find(smoothenedinterface(:,5)==i);
    interface=smoothenedinterface(f,1:2);
    interface1=smoothenedinterface(f,3:4);
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
    shiftedinterface=circshift(interface,-1);
    distances=((interface(:,1)-shiftedinterface(:,1)).^2+(interface(:,2)-shiftedinterface(:,2)).^2).^(0.5);
    meaninterfacelength(i,1)=sum(distances);
    distances=[];
    dummy=[];
    dummy(:,1)=interface1(:,1);
    dummy(:,2)=p1;
    dummy(:,3)=i;
    meaninterface=vertcat(meaninterface,dummy);
%     fluctuations=vertcat(fluctuations,fluctuations1);
end
%now to divide based on the length of the mean interface
%leeway is the maximum distance between two particles(big-big distance)
d=32*(1.4);
k=floor(max(meaninterfacelength)/100);
for j=1:1:k
    f=find(meaninterfacelength<=((j*100)) & meaninterfacelength>=(((j-1)*100)));
    l=length(f);
    number(j,1)=l;
    for m=1:1:length(f)
        h=find(smoothendinterface(:,5)==f(m));
        interface1(:,1:2)=smoothenedinterface(h,3:4);
        theta=pi/180:pi/180:(2*pi);
        in=interp1(interface1(:,1),interface1(:,2),theta);
        smooin=[];
        smooin(:,1)=in.*theta;
        smooin(:,2)=in;
         X=[]; Y=[];
         %in order to find out what i dont like it
%     [X,Y]=pol2cart(interface1(:,1),p1);
%     fluctuations1=[];
%     fluctuations1(:,1)=interface(:,1)-X;
%     fluctuations1(:,2)=interface(:,2)-Y;
%     fluctuations1(:,3)=i;
        Y=interp1(C(:,1),C(:,2),s','linear','extrap');
    end
end