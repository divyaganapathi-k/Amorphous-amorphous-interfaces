% meanradius=[];
% for i=1:1:length(dummy)
% A=find(coorinterface(:,4)==i);
% B=coorinterface(A,1:3);
% [theta, rho]=cart2pol(B(:,1),B(:,2));
% meanradius(i,1)=mean(rho);
% end
Show=N2(:,:,5000);
Show=Show(1:142,1:90);
Show=Show(:,1:87);
f=isnan(Show);
    f1=find(f==1);
    Show(f1)=0;
%     f1=find(Show>1);
%     Show(f1)==1;
f2=find(Show);
Result=Show(f2);