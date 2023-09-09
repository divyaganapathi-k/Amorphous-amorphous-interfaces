avoverlap=[];
f=find(AA(:,1)==m1 & AA(:,2)==m2);
timecoordinates=AA(f,3);
for i=1:1:length(f)
    A=N2(:,:,timecoordinates(i));
    f=find(A>=0);
    B=[];
    [B(:,1),B(:,2)]=ind2sub(size(A),f);
    C=B-0.5;
    G=[];
    for j=1:1:30
        D=((C(:,1)-b21).^2+(C(:,2)-b22).^2).^(0.5);
        f1=find(D<(j) & D>=(j-1));
        E=[];
        E(:,1)=B(f1,1);
        E(:,2)=B(f1,2);
        e=sub2ind(size(A),E(:,1),E(:,2)); 
        F=A(e);
        m=mean(F);
        G(j,1)=j;
        G(j,2)=m;
        G(j,3)=i;
    end
     avoverlap=vertcat(avoverlap,G);
end
overlapfunction=zeros(30,2);
for j=1:1:30
    f2=find(avoverlap(:,1)==j);
    values=avoverlap(f2,2);
    m=mean(values);
    overlapfunction(j,1)=j;
    overlapfunction(j,2)=m;
end