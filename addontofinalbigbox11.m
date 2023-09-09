% %PART_I-To find out the length of the mean interface
meanradius=[];
for i=1:1:length(dummy)
    A=find(smoothenedinterface(:,5)==i);
    B=smoothenedinterface(A,1:4);
    meanradius(i)=mean(B(:,4));
end
for jj=3:1:3
    for i=1:1:length(dummy)
        A=find(coorinterface(:,4)==i & coorinterface(:,5)==jj);
        if jj==1
                m1=58; m2=23;
                b21=(2*m1)-1; b22=(2*m2)-1;
                m11=b21+0.5;
                m22=b22+0.5;
                x1=m11*(boxsiz)*(sigmas);
                y1=m22*(boxsiz)*(sigmas); 
            elseif jj==2
                m1=58; m2=17;
                b21=(2*m1)-1; b22=(2*m2)-1;
                m11=b21+0.5;
                m22=b22+0.5;
                x1=m11*(boxsiz)*(sigmas);
                y1=m22*(boxsiz)*(sigmas); 
            elseif jj==3
                m1=48; m2=27;
                b21=(2*m1)-1; b22=(2*m2)-1;
                m11=b21+0.5;
                m22=b22+0.5;
                x1=m11*(boxsiz)*(sigmas);
                y1=m22*(boxsiz)*(sigmas); 
            elseif jj==4
                m1=42; m2=30;
                b21=(2*m1)-1; b22=(2*m2)-1;
                m11=b21+0.5;
                m22=b22+0.5;
                x1=m11*(boxsiz)*(sigmas);
                y1=m22*(boxsiz)*(sigmas); 
        end
        B=coorinterface(A,1:3);
        B(:,4)=((((B(:,1)-x1).^2)+((B(:,2)-y1).^2)).^(0.5));
        meanradius(i)=mean(B(:,4));
    end
end
meanr=mean(meanradius);
f=find(meanradius>=(meanr-25) & meanradius<=(meanr+25)); 
% PART_II -To find the mean interface which forms the base line all the
%interfaces
theta=(pi/180):(pi/180):(2*pi);
Avgintface=zeros(360,1);
for jj=3:1:3
    for i=1:1:length(f)
         if jj==1
                m1=58; m2=23;
                b21=(2*m1)-1; b22=(2*m2)-1;
                m11=b21+0.5;
                m22=b22+0.5;
                x1=m11*(boxsiz)*(sigmas);
                y1=m22*(boxsiz)*(sigmas); 
            elseif jj==2
                m1=58; m2=17;
                b21=(2*m1)-1; b22=(2*m2)-1;
                m11=b21+0.5;
                m22=b22+0.5;
                x1=m11*(boxsiz)*(sigmas);
                y1=m22*(boxsiz)*(sigmas); 
            elseif jj==3
                m1=48; m2=27;
                b21=(2*m1)-1; b22=(2*m2)-1;
                m11=b21+0.5;
                m22=b22+0.5;
                x1=m11*(boxsiz)*(sigmas);
                y1=m22*(boxsiz)*(sigmas); 
            elseif jj==4
                m1=42; m2=30;
                b21=(2*m1)-1; b22=(2*m2)-1;
                m11=b21+0.5;
                m22=b22+0.5;
                x1=m11*(boxsiz)*(sigmas);
                y1=m22*(boxsiz)*(sigmas); 
        end
        F=find(coorinterface(:,4)==f(i) & coorinterface(:,5)==jj);
        intface=[];
        intface(:,1)=coorinterface(F,3);
        intface(:,2)=((((coorinterface(F,1)-x1).^2)+((coorinterface(F,2)-y1).^2)).^(0.5));
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
j=0;
for jj=3:1:3
    for i=1:1:length(f)
         if jj==1
                m1=58; m2=23;
                b21=(2*m1)-1; b22=(2*m2)-1;
                m11=b21+0.5;
                m22=b22+0.5;
                x1=m11*(boxsiz)*(sigmas);
                y1=m22*(boxsiz)*(sigmas); 
            elseif jj==2
                m1=58; m2=17;
                b21=(2*m1)-1; b22=(2*m2)-1;
                m11=b21+0.5;
                m22=b22+0.5;
                x1=m11*(boxsiz)*(sigmas);
                y1=m22*(boxsiz)*(sigmas); 
            elseif jj==3
                m1=48; m2=27;
                b21=(2*m1)-1; b22=(2*m2)-1;
                m11=b21+0.5;
                m22=b22+0.5;
                x1=m11*(boxsiz)*(sigmas);
                y1=m22*(boxsiz)*(sigmas); 
            elseif jj==4
                m1=42; m2=30;
                b21=(2*m1)-1; b22=(2*m2)-1;
                m11=b21+0.5;
                m22=b22+0.5;
                x1=m11*(boxsiz)*(sigmas);
                y1=m22*(boxsiz)*(sigmas); 
        end
        A=find(coorinterface(:,4)==f(i) & coorinterface(:,5)==jj);
        B=[];
        B(:,1)=coorinterface(A,3);
        B(:,2)=((((coorinterface(A,1)-x1).^2)+((coorinterface(A,2)-y1).^2)).^(0.5));
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
        j=j+1;
    end
end
% Amplitude2(:,1)=s';