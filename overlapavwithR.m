avoverlap=[];
for i=1:1:10000
    A=N2(:,:,i);
    f=find(A);
    B=[];
    [B(:,1),B(:,2)]=ind2sub(size(A),f);
    C=B-0.25;
    G=[];
    for j=1:1:30
        D=((C(:,1)-b11).^2+(C(:,2)-b12).^2).^(0.5);
        f=find(D<=(j+1) & D>j);
        E=[];
        E(:,1)=B(f,1);
        E(:,2)=B(f,2);
        F=[];
        for k=1:1:length(E(:,1))
            F(k)=A(E(k,1),E(k,2));
        end
        m=mean(F);
        G(j,1)=j;
        G(j,2)=m;
        G(j,3)=i;
        avoverlap=vertcat(avoverlap,G);
    end
end
overlapfunction=zeros(30,2);
for j=1:1:30
    f=find(avoverlap(:,1)==j);
    values=avoverlap(f,2);
    m=mean(values);
    overlapfunction(j,1)=j;
    overlapfunction(j,2)=m;
end