clear all
close all
m1=0.001;
m2=1;
t=(5*m1*1):m1*1:m2;
x=(5*m1)*1:(5*m1)*1:m2;
wave=[];
for w=1:1:1
    a=10*rand(1,1)*rand(1,1);
    A=[];
    y=((1/(w)^(1)))*sin(((w)*x));
    A(:,1)=t;
    A(:,2)=interp1(x,y,t);
    A(:,3)=w;
    wave=vertcat(wave,A);
end
% %to calculate mean interface
n=(m2/m1)-4;
B=zeros(n,2);
B(:,1)=t;
for i=1:1:n
    f=find(wave(:,1)==(m1*i));
    B(i,2)=sum(wave(f,2));
end
Amplitude2=zeros(n,2);
Amplitude2(:,1)=(((2*pi)/n):((2*pi)/n):2*pi)';
% % for i=1:1:5000
%     f=find(wave(:,3)==i);
%     C=wave(f,1:2);
%     C(:,2)=C(:,2)-B(:,2);
%     F=fft(C(:,2));
%     Z=(abs(F));
%     Z=Z.^2;
%     Amplitude2(:,2)=Amplitude2(:,2)+Z;
% end
F=fft(B(:,2));
Z=(abs(F));
Z=Z.^2;
Amplitude2(:,2)=Amplitude2(:,2)+Z;
plot(B(:,1),B(:,2));
figure
% plot(Amplitude2(:,1),Amplitude2(:,2));
loglog(Amplitude2(:,1),Amplitude2(:,2));
grid on