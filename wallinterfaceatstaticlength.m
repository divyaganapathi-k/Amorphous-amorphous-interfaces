coordinates=[];
for i=1:1:(n-(2*t))
    A=N2(:,:,i);
    A=A';
    [dim1,dim2]=size(A);
    C=zeros(dim2,5);
    for j=1:1:dim2
        f=find(A(:,j)<=0.2 & A(:,j)>0.084);
        a=abs(f-4);
        [c1,c2]=min(a);
        b=isempty(a);
        if b==1
        c=0;
        else
            c=f(c2);
        end
    C(j,1)=j; % xvalue
    C(j,2)=c; % yvalue
    C(j,3)=j*boxsiz*sigmas;
    C(j,4)=c*boxsiz*sigmas;
    C(j,5)=i;
    end
    coordinates=vertcat(coordinates,C);
end