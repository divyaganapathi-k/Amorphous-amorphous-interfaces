sigmas=21.7;
y=0:sigmas:1160;
n=max(R(:,4));
t=7*750;
coordinates=zeros((n-(2*t)),6);
l=length(y);
for i=1:1:(n-(2*t))
    for j=1:1:3
        f=find(R(:,4)==i & R(:,2)>=(12+(2*j))*sigmas &R(:,2)<(12+(2*j)+1)*sigmas);
        A=R(f,1:2);
        B=[];
        B=mean(A);
        coordinates(i,(2*j-1))=B(:,1);
        coordinates(i,(2*j))=B(:,2);
    end
end