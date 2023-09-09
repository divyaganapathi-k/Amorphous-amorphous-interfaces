% selectively removing the high amplitude points which lay inbetween two
% sigma separated boxes
finalcoorinterface=[];
for j=1:1:1
    for i=1:1:length(dummy)
        F=find(coorinterface(:,4)==i & coorinterface(:,5)==j);
        coordinates=coorinterface(F,1:3);
        if j==1
            m1=58; m2=23;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        elseif j==2
            m1=58; m2=17;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        elseif j==3
            m1=48; m2=27;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        elseif j==4
            m1=42; m2=30;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        end
        coordinates(:,4)=((((coordinates(:,1)-x1).^2)+((coordinates(:,2)-y1).^2)).^(0.5));
        for k=1:1:length(coordinates(:,1))
            if k==(length(coordinates(:,1))-1)
                if coordinates(k,1)~=0 && coordinates(k,2)~=0
                a=((coordinates(k,1)-coordinates(k+1,1))^2+(coordinates(k,2)-coordinates(k+1,2))^2)^(0.5);
                b=((coordinates(k+1,1)-coordinates(1,1))^2+(coordinates(k+1,2)-coordinates(1,2))^2)^(0.5);
                c=((coordinates(k,1)-coordinates(1,1))^2+(coordinates(k,2)-coordinates(1,2))^2)^(0.5);
                    if a>c && c<=((1.5)*sigmas)
                        coordinates(k+1,1)=0;
                        coordinates(k+1,2)=0;
                    end
                end
            elseif k==(length(coordinates(:,1)))
            if coordinates(k,1)~=0 && coordinates(k,2)~=0 && coordinates(1,1)~=0 && coordinates(1,2)~=0 && coordinates(2,1)~=0 && coordinates(2,2)~=0
                a=((coordinates(k,1)-coordinates(1,1))^2+(coordinates(k,2)-coordinates(1,2))^2)^(0.5);
                b=((coordinates(1,1)-coordinates(2,1))^2+(coordinates(2,2)-coordinates(1,2))^2)^(0.5);
                c=((coordinates(k,1)-coordinates(2,1))^2+(coordinates(k,2)-coordinates(2,2))^2)^(0.5);
                if a>c && c<=((1.5)*sigmas)
                    coordinates(k+1,1)=0;
                    coordinates(k+1,2)=0;
                end
            end
            else
                if coordinates(k,1)~=0 && coordinates(k,2)~=0
                a=((coordinates(k,1)-coordinates(k+1,1))^2+(coordinates(k,2)-coordinates(k+1,2))^2)^(0.5);
                b=((coordinates(k+1,1)-coordinates(k+2,1))^2+(coordinates(k+1,2)-coordinates(k+2,2))^2)^(0.5);
                c=((coordinates(k,1)-coordinates(k+2,1))^2+(coordinates(k,2)-coordinates(k+2,2))^2)^(0.5);
                    if a>c && c<=((1.5)*sigmas)
                        coordinates(k+1,1)=0;
                        coordinates(k+1,2)=0;
                    end
                end
            end
        end
        f=find(coordinates(:,1));
        coor=coordinates(f,1:4);
        coor(:,5)=i;
        coor(:,6)=j;
        finalcoorinterface=vertcat(finalcoorinterface,coor);
    end
end
for i=1:20:length(dummy)
    for j=1:1:1
        F=find(coorinterface(:,4)==i & coorinterface(:,5)==j);
        F1=find(finalcoorinterface(:,5)==i & finalcoorinterface(:,6)==j);
        coor=coorinterface(F,1:2);
        coors=finalcoorinterface(F1,1:2);
        if j==1
            m1=58; m2=23;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        elseif j==2
            m1=58; m2=17;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        elseif j==3
            m1=48; m2=27;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        elseif j==4
            m1=42; m2=30;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        end
        scatter(x1,y1,30,'b','filled');
        hold on
        xlim([000 1600])
        ylim([0 1200])
        axis ij
        scatter(coor(:,1),coor(:,2),20,'r','filled');
        plot(coor(:,1),coor(:,2),'g','LineWidth',1);
        coor1=[];
        coor1(1,1:2)=coor(1,1:2);
        coor1(2,1:2)=coor(end,1:2);
        plot(coor1(:,1),coor1(:,2),'g','LineWidth',1);
        scatter(coors(:,1),coors(:,2),20,'r','filled');
        plot(coors(:,1),coors(:,2),'b','LineWidth',2);
        coor1=[];
        coor1(1,1:2)=coors(1,1:2);
        coor1(2,1:2)=coors(end,1:2);
        plot(coor1(:,1),coor1(:,2),'b','LineWidth',2);
    end
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\W2-simultaneousinterfaces3\',num2str(jj),num2str(i),'.tif'));
end
theta=(pi/180):(pi/180):(2*pi);
Avgintface=zeros(360,1);
for j=1:1:1
    for i=1:1:length(dummy)
        F=find(finalcoorinterface(:,5)==i & finalcoorinterface(:,6)==j);
        intface=finalcoorinterface(F,3:4);
        intface=sortrows(intface,1);
        [dummy1,ia,ic]=unique(intface(:,1));
        intface1=[];
        intface1=intface(ia,1:2);
        intface2=interp1(intface1(:,1),intface1(:,2),theta','linear','extrap');
        Avgintface=Avgintface+intface2;
    end
end
Avgintface=(Avgintface)/(length(dummy));
% 
% %PART_VI-To find out the least length of an interface
meanradius=[];
for j=1:1:1
    for i=1:1:length(dummy)
        A=find(finalcoorinterface(:,5)==i & finalcoorinterface(:,6)==j);
        B=finalcoorinterface(A,1:4);
        meanradius(i)=mean(B(:,4));
    end
end
r=min(meanradius);
meanr=mean(meanradius);
f=find(meanradius>=(meanr-25) & meanradius<=(meanr+25)); 
% PART_II -To find the mean interface which forms the base line all the
%interfaces
theta=(pi/180):(pi/180):(2*pi);
Avgintface=zeros(360,1);
for j=1:1:1
    for i=1:1:length(f)
        F=find(finalcoorinterface(:,5)==f(i) & finalcoorinterface(:,6)==j);
        intface=finalcoorinterface(F,3:4);
        intface=sortrows(intface,1);
        [dummy1,ia,ic]=unique(intface(:,1));
        intface1=[];
        intface1=intface(ia,1:2);
        intface2=interp1(intface1(:,1),intface1(:,2),theta','linear','extrap');
        Avgintface=Avgintface+intface2;
    end
end
Avgintface=(Avgintface)/(length(f));

%PART_II -To find Ak2
Amplitude2=zeros(360,2);
Amplitude2(:,1)=(1/(meanr-25)):(1/(meanr-25)):(360*(1/(meanr-25)));
% Amplitude2(:,1)=(1/(275.77-25)):(1/(275.77-25)):(360*(1/(275.77-25)));
k=0;
for j=1:1:1
    for i=1:1:length(f)
        A=find(finalcoorinterface(:,5)==f(i) & finalcoorinterface(:,6)==j);
        B=finalcoorinterface(A,3:4);
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
    %     s=((275.77-25)*pi)/180:((275.77-25)*pi)/180:((275.77-25)*2*pi);
        Y1=interp1(C(:,1),C(:,2),s','linear','extrap');
        F=fft(Y1);
        Z=(abs(F));
        Z=Z.^2;
        Amplitude2(:,2)=Amplitude2(:,2)+Z;
        k=k+1;
    end
end