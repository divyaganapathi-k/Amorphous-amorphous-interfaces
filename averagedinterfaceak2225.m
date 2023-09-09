theta=(pi/180):(pi/180):(2*pi);
theta1=theta;
j=1;
timet=[];
FinalCoordinates=[];
for i=1:1:(n-(2*t))
   f1=find(coorinterface1(:,5)==i);
   if isempty(f1)==1
       continue
   else
   f2=find(coorinterface2(:,5)==i);
   if isempty(f2)==1
       continue
   else
   f3=find(coorinterface3(:,5)==i);
   if isempty(f3)==1
       continue
   else
   f4=find(coorinterface4(:,5)==i);
   if isempty(f4)==1
        continue
   else
   f5=find(coorinterface5(:,5)==i);
   if isempty(f5)==1
        continue
   else
   f6=find(coorinterface6(:,5)==i);
   if isempty(f6)==1
       continue
   else
   f7=find(coorinterface7(:,5)==i);
   if isempty(f7)==1
        continue
   else
   f8=find(coorinterface8(:,5)==i);
   if isempty(f8)==1
        continue
   else
   f9=find(coorinterface9(:,5)==i);
   if isempty(f9)==1
        continue
   else
   f10=find(coorinterface10(:,5)==i);
   if isempty(f10)==1
        continue
   else
   f11=find(coorinterface11(:,5)==i);
   if isempty(f11)==1
        continue
   else
   f12=find(coorinterface12(:,5)==i);
   if isempty(f12)==1
        continue
   else
   f13=find(coorinterface13(:,5)==i);
   if isempty(f13)==1
        continue
   else
   f14=find(coorinterface14(:,5)==i);
   if isempty(f14)==1
        continue
   else
   f15=find(coorinterface15(:,5)==i);
   if isempty(f15)==1
        continue
   else
   f16=find(coorinterface16(:,5)==i);
   if isempty(f16)==1
        continue
   else
   f17=find(coorinterface17(:,5)==i);
   if isempty(f17)==1
        continue
   else
   f18=find(coorinterface18(:,5)==i);
   if isempty(f18)==1
        continue
   else
   f19=find(coorinterface19(:,5)==i);
   if isempty(f19)==1
        continue
   else
   f20=find(coorinterface20(:,5)==i);
   if isempty(f20)==1
        continue
   else
   f21=find(coorinterface21(:,5)==i);
   if isempty(f21)==1
        continue
   else
   f22=find(coorinterface22(:,5)==i);
   if isempty(f22)==1
        continue
   else
   f23=find(coorinterface23(:,5)==i);
   if isempty(f23)==1
        continue
   else
   f24=find(coorinterface24(:,5)==i);
   if isempty(f24)==1
        continue
   else
   f25=find(coorinterface25(:,5)==i);
   if isempty(f25)==1
        continue 
   else
%    coor1=[]; coor2=[]; coor3=[]; coor4=[]; coor5=[];
   coor1=coorinterface1(f1,3:4);
   coor2=coorinterface2(f2,3:4);
   coor3=coorinterface3(f3,3:4);
   coor4=coorinterface4(f4,3:4);
   coor5=coorinterface5(f5,3:4);
   coor6=coorinterface6(f6,3:4);
   coor7=coorinterface7(f7,3:4);
   coor8=coorinterface8(f8,3:4);
   coor9=coorinterface9(f9,3:4);
   coor10=coorinterface10(f10,3:4);
   coor11=coorinterface11(f11,3:4);
   coor12=coorinterface12(f12,3:4);
   coor13=coorinterface13(f13,3:4);
   coor14=coorinterface14(f14,3:4);
   coor15=coorinterface15(f15,3:4);
   coor16=coorinterface16(f16,3:4);
   coor17=coorinterface17(f17,3:4);
   coor18=coorinterface18(f18,3:4);
   coor19=coorinterface19(f19,3:4);
   coor20=coorinterface20(f20,3:4);
   coor21=coorinterface21(f21,3:4);
   coor22=coorinterface22(f22,3:4);
   coor23=coorinterface23(f23,3:4);
   coor24=coorinterface24(f24,3:4);
   coor25=coorinterface25(f25,3:4);
   [~,b,~]=unique(coor1(:,1));
   coor11=coor1(b,1:2);
   [~,b,~]=unique(coor2(:,1));
   coor22=coor2(b,1:2);
   [~,b,~]=unique(coor3(:,1));
   coor33=coor3(b,1:2);
   [~,b,~]=unique(coor4(:,1));
   coor44=coor4(b,1:2);
   [~,b,~]=unique(coor5(:,1));
   coor55=coor5(b,1:2);
   [~,b,~]=unique(coor6(:,1));
   coor66=coor6(b,1:2);
   [~,b,~]=unique(coor7(:,1));
   coor77=coor7(b,1:2);
   [~,b,~]=unique(coor8(:,1));
   coor88=coor8(b,1:2);
   [~,b,~]=unique(coor9(:,1));
   coor99=coor9(b,1:2);
   [~,b,~]=unique(coor10(:,1));
   coor1010=coor10(b,1:2);
   [~,b,~]=unique(coor11(:,1));
   coor1111=coor11(b,1:2);
   [~,b,~]=unique(coor12(:,1));
   coor1212=coor12(b,1:2);
   [~,b,~]=unique(coor13(:,1));
   coor1313=coor13(b,1:2);
   [~,b,~]=unique(coor14(:,1));
   coor1414=coor14(b,1:2);
   [~,b,~]=unique(coor15(:,1));
   coor1515=coor15(b,1:2);
   [~,b,~]=unique(coor16(:,1));
   coor1616=coor16(b,1:2);
   [~,b,~]=unique(coor17(:,1));
   coor1717=coor17(b,1:2);
   [~,b,~]=unique(coor18(:,1));
   coor1818=coor18(b,1:2);
   [~,b,~]=unique(coor19(:,1));
   coor1919=coor19(b,1:2);
   [~,b,~]=unique(coor20(:,1));
   coor2020=coor20(b,1:2);
   [~,b,~]=unique(coor21(:,1));
   coor2121=coor21(b,1:2);
   [~,b,~]=unique(coor22(:,1));
   coor2222=coor22(b,1:2);
   [~,b,~]=unique(coor23(:,1));
   coor2323=coor23(b,1:2);
   [~,b,~]=unique(coor24(:,1));
   coor2424=coor24(b,1:2);
   [~,b,~]=unique(coor25(:,1));
   coor2525=coor25(b,1:2);
   coordinates=[];
   coordinates(:,1)=interp1(coor11(:,1),coor11(:,2),theta1','linear','extrap');
   coordinates(:,2)=interp1(coor22(:,1),coor22(:,2),theta1','linear','extrap');
   coordinates(:,3)=interp1(coor33(:,1),coor33(:,2),theta1','linear','extrap');
   coordinates(:,4)=interp1(coor44(:,1),coor44(:,2),theta1','linear','extrap');
   coordinates(:,5)=interp1(coor55(:,1),coor55(:,2),theta1','linear','extrap');
   coordinates(:,6)=interp1(coor66(:,1),coor66(:,2),theta1','linear','extrap');
   coordinates(:,7)=interp1(coor77(:,1),coor77(:,2),theta1','linear','extrap');
   coordinates(:,8)=interp1(coor88(:,1),coor88(:,2),theta1','linear','extrap');
   coordinates(:,9)=interp1(coor99(:,1),coor99(:,2),theta1','linear','extrap');
   coordinates(:,10)=interp1(coor1010(:,1),coor1010(:,2),theta1','linear','extrap');
   coordinates(:,11)=interp1(coor1111(:,1),coor1111(:,2),theta1','linear','extrap');
   coordinates(:,12)=interp1(coor1212(:,1),coor1212(:,2),theta1','linear','extrap');
   coordinates(:,13)=interp1(coor1313(:,1),coor1313(:,2),theta1','linear','extrap');
   coordinates(:,14)=interp1(coor1414(:,1),coor1414(:,2),theta1','linear','extrap');
   coordinates(:,15)=interp1(coor1515(:,1),coor1515(:,2),theta1','linear','extrap');
   coordinates(:,16)=interp1(coor1616(:,1),coor1616(:,2),theta1','linear','extrap');
   coordinates(:,17)=interp1(coor1717(:,1),coor1717(:,2),theta1','linear','extrap');
   coordinates(:,18)=interp1(coor1818(:,1),coor1818(:,2),theta1','linear','extrap');
   coordinates(:,19)=interp1(coor1919(:,1),coor1919(:,2),theta1','linear','extrap');
   coordinates(:,20)=interp1(coor2020(:,1),coor2020(:,2),theta1','linear','extrap');
   coordinates(:,21)=interp1(coor2121(:,1),coor2121(:,2),theta1','linear','extrap');
   coordinates(:,22)=interp1(coor2222(:,1),coor2222(:,2),theta1','linear','extrap');
   coordinates(:,23)=interp1(coor2323(:,1),coor2323(:,2),theta1','linear','extrap');
   coordinates(:,24)=interp1(coor2424(:,1),coor2424(:,2),theta1','linear','extrap');
   coordinates(:,25)=interp1(coor2525(:,1),coor2525(:,2),theta1','linear','extrap');
   finalcoordinates=[];
   finalcoordinates(:,1)=theta1';
   finalcoordinates(:,2)=mean(coordinates,2);
   finalcoordinates(:,3)=i;
   FinalCoordinates=vertcat(FinalCoordinates,finalcoordinates);
   timet(j)=i;
   j=j+1;
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
   end
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