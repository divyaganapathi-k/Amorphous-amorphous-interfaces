clearvars
for ii=1:1:9
%     load(strcat('E:\Wall-Data Analysis\persistencefunction\W2\FinalCoordinates_shiftedinterface_persistent',num2str(ii),'-2.mat'));
    load(strcat('E:\Wall_RefreeAnalysis\W2\FinalCoordinates_shiftedinterface_persistent',num2str(ii),'.mat'));
    dummy1=matlab.lang.makeValidName(strcat('FinalCoordinates',num2str(ii)));
    eval([dummy1 '= FinalCoordinates;']);
end
clear FinalCoordinates
% f= (FinalCoordinates1(:,1)>27 );
% FinalCoordinates1=FinalCoordinates1(f,:);
% f= (FinalCoordinates2(:,1)>27 );
% FinalCoordinates2=FinalCoordinates2(f,:);
% f= (FinalCoordinates3(:,1)>27 );
% FinalCoordinates3=FinalCoordinates3(f,:);
% f= (FinalCoordinates4(:,1)>27 );
% FinalCoordinates4=FinalCoordinates4(f,:);
% f= (FinalCoordinates5(:,1)>27 );
% FinalCoordinates5=FinalCoordinates5(f,:);
% f= (FinalCoordinates6(:,1)>27 );
% FinalCoordinates6=FinalCoordinates6(f,:);
% f= (FinalCoordinates7(:,1)>27 );
% FinalCoordinates7=FinalCoordinates7(f,:);
% f= (FinalCoordinates8(:,1)>27 );
% FinalCoordinates8=FinalCoordinates8(f,:);
% f= (FinalCoordinates9(:,1)>27 );
% FinalCoordinates9=FinalCoordinates9(f,:);
FinalCoordinates1(:,4)=FinalCoordinates1(:,4)/20.66;
FinalCoordinates2(:,4)=FinalCoordinates2(:,4)/20.66;
FinalCoordinates3(:,4)=FinalCoordinates3(:,4)/20.66;
FinalCoordinates4(:,4)=FinalCoordinates4(:,4)/20.66;
FinalCoordinates5(:,4)=FinalCoordinates5(:,4)/20.66;
FinalCoordinates6(:,4)=FinalCoordinates6(:,4)/20.66;
FinalCoordinates7(:,4)=FinalCoordinates7(:,4)/20.66;
FinalCoordinates8(:,4)=FinalCoordinates8(:,4)/20.66;
FinalCoordinates9(:,4)=FinalCoordinates9(:,4)/20.66;
FinalCoordinates1(:,5)=FinalCoordinates1(:,5)/20.66;
FinalCoordinates2(:,5)=FinalCoordinates2(:,5)/20.66;
FinalCoordinates3(:,5)=FinalCoordinates3(:,5)/20.66;
FinalCoordinates4(:,5)=FinalCoordinates4(:,5)/20.66;
FinalCoordinates5(:,5)=FinalCoordinates5(:,5)/20.66;
FinalCoordinates6(:,5)=FinalCoordinates6(:,5)/20.66;
FinalCoordinates7(:,5)=FinalCoordinates7(:,5)/20.66;
FinalCoordinates8(:,5)=FinalCoordinates8(:,5)/20.66;
FinalCoordinates9(:,5)=FinalCoordinates9(:,5)/20.66;
y=((21.7/20.66)*(1:1:72))';
% y=(1:1:72)';
CoordinatesInterface=[];
%max(FinalCoordinates1(:,3))
value1=1001;
value2=3500;
for i=value1:1:value2
    f1=find(FinalCoordinates1(:,3)==i);
    f2=find(FinalCoordinates2(:,3)==i);
    f3=find(FinalCoordinates3(:,3)==i);
    f4=find(FinalCoordinates4(:,3)==i);
    f5=find(FinalCoordinates5(:,3)==i);
    f6=find(FinalCoordinates6(:,3)==i);
    f7=find(FinalCoordinates7(:,3)==i);
    f8=find(FinalCoordinates8(:,3)==i);
    f9=find(FinalCoordinates9(:,3)==i);
    finalcoordinates=zeros(72,9);
    finalcoordinates(:,1)=FinalCoordinates1(f1,2);
    finalcoordinates(:,2)=FinalCoordinates2(f2,2);
    finalcoordinates(:,3)=FinalCoordinates3(f3,2);
    finalcoordinates(:,4)=FinalCoordinates4(f4,2);
    finalcoordinates(:,5)=FinalCoordinates5(f5,2);
    finalcoordinates(:,6)=FinalCoordinates6(f6,2);
    finalcoordinates(:,7)=FinalCoordinates7(f7,2);
    finalcoordinates(:,8)=FinalCoordinates8(f8,2);
    finalcoordinates(:,9)=FinalCoordinates9(f9,2);
    coorinterface(:,1)=y;
    coorinterface(:,2)=mean(finalcoordinates,2);
    coorinterface(:,3)=i;
    CoordinatesInterface=vertcat(CoordinatesInterface,coorinterface);
end
% to define average interface
% 
avginterface=zeros(72,1);
for i=1:1:72
    f=find(CoordinatesInterface(:,1)==y(i) & CoordinatesInterface(:,3)>=value1 & CoordinatesInterface(:,3)<=value2);
    A=CoordinatesInterface(f,2);
    avginterface(i,1)=mean(A);
end
% for i=1:1:72
%     f=find(FinalCoordinates1(:,1)==y(i) & FinalCoordinates1(:,3)>=14001 & FinalCoordinates1(:,3)<=16500);
%     A=FinalCoordinates1(f,2);
%     avginterface(i,1)=mean(A);
% end
% f=find(CoordinatesInterface(:,1)>4 & CoordinatesInterface(:,1)<69);
% h=mean(CoordinatesInterface(f,2));
x=(3*((21.7)/20.66)):((2*2.17)/20.66):(69*((21.7)/20.66));
Amplitude2=zeros(168,2);
Amplitude2(:,1)=(1/(x(end)-x(1))):(1/((x(end)-x(1)))):(336/(2*(x(end)-x(1))));
fluctuations=[];
%max(FinalCoordinates1(:,3))
for i=value1:1:value2
    f=find(CoordinatesInterface(:,3)==i);
    A=CoordinatesInterface(f,1:2);
    A(:,2)=A(:,2)-avginterface;
    Y1=interp1(A(:,1),A(:,2),x','linear','extrap');
    F=fft(Y1);
    Z=(abs(F/length(Y1)));
    Z=Z.^2;
    Amplitude2(:,2)=Amplitude2(:,2)+Z(1:168);
    fluctuations=vertcat(fluctuations,Y1);
end
% Amplitude2(:,2)=Amplitude2(:,2)/max(FinalCoordinates1(:,3));
Amplitude2(:,2)=Amplitude2(:,2)/2500;
filename=(strcat('E:\Wall_RefreeAnalysis\W2\W2_ak2-set3.mat'));
save(filename);