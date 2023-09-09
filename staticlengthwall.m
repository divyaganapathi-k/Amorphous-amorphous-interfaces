Staticlength=zeros((n-2*t),83);
for i=1:1:(n-(2*t))
    A=N2(:,:,i);
    A=A';
    f=find(isnan(A));
    A(f)=0;
    for j=1:1:107
        B=[];
        B=A(:,j);
        a=mean(B);
        Staticlength(i,j)=a;
    end
end
avStaticlength=[];
avStaticlength=mean(Staticlength);
avStaticlength=avStaticlength';