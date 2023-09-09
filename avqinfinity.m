q=zeros(40,2);
k=1;
columnno=17;
for jj=1:1:3
    for j=1:1:9
        clearvars -except q k j jj columnno
        t=j*(10^(jj-1));
        filename=strcat('D:\Newdataanalysis\qinfinity\W8tawalldata-qinfinity',num2str(t),'.mat');
        load(filename);
        [m1,m2,m3]=size(N2);
        avq=zeros(m3,1);
%         f=find(isnan(N2)==1);
%         N2(f)=0;
        for i=1:1:m3
            A=N2(:,columnno,i);
            f=find(isnan(A)==0);
            a=mean(A(f));
            avq(i,1)=a;
        end
        q(k,1)=t;
        q(k,2)=mean(avq);
        k=k+1;
    end
end

for j=1:1:9
    clearvars -except q k j columnno
    t=j*(1000);
    filename=strcat('D:\Newdataanalysis\qinfinity\W8tawalldata-qinfinity',num2str(t),'.mat');
    load(filename);
    [m1,m2,m3]=size(N2);
    avq=zeros(m3,1);
%     f=find(isnan(N2)==1);
%     N2(f)=0;
    for i=1:1:m3
        A=N2(:,:,i);
        A=N2(:,columnno,i);
        f=find(isnan(A)==0);
        a=mean(A(f));
        avq(i,1)=a;
    end
    q(k,1)=t;
    q(k,2)=mean(avq);
    k=k+1;
end