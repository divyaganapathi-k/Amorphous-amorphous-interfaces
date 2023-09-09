clear all
close all
m1=0.001;
m2=200;
t=m1*1:m1*1:m2;
t=t';
wave=[];
for w=1:1:100
    a=10*rand(1,1)*rand(1,1);
    A(:,w)=((1/(w)^(-2)))*sin(((w)*t)+a);
end
% plot(t',A(:,1));
%to calculate mean interface
B=sum(A,2);
plot(t',B);
n=m2/m1;
Amplitude2=zeros(n,2);
Amplitude2(:,1)=(((2*pi)/n):((2*pi)/n):2*pi)';
F=fft(B);
Z=(abs(F));
Z=Z.^2;
Amplitude2(:,2)=Amplitude2(:,2)+Z;
figure
% plot(Amplitude2(:,1),Amplitude2(:,2));
loglog(Amplitude2(:,1),Amplitude2(:,2));
grid on