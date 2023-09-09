f=unique(mostmobile(:,5));
tolerance=0.001;
for i=1:1:length(f)
    f1=find(mostmobile(:,5)==f(i));
    P=mostmobile(f1,2:3);
    [A,c]=MinVolEllipse(P, tolerance);
%     A=inv(A);
    [U,Q,V]=svd(A);
    r1=1/sqrt(Q(1,1)); 
    r2=1/sqrt(Q(2,2)); 
end
