% to define random occupancy based on the boxsize
n=max(R(:,3));
t=750;
sigmas=21.7;
boxsiz=0.5;
x=1560;
y=1260;
number=20.5;
X=(0:((boxsiz)*sigmas):x);
Y=(0:((boxsiz)*sigmas):y);
% N=[];
% for i=1:1:n
%     F=find(R(:,3)==i);
%     N(:,:,i)=hist3(R(F,1:2),'Edges',{(0:((boxsiz)*sigmas):x) (0:((boxsiz)*sigmas):y)});
% end
 % averaging to get the percentage occupancy
% H=find(N>1);
% N(H)=1;
N1=[];
N1=circshift(N,-(5*t),3);
N3=[];
N3=N1.*N;
N3=N3(:,:,1:(n-(5*t)));
N4=N(:,:,1:(n-(5*t)));
[h1 h2 h3]=size(N);
% now all the boxes will have the occupancies for 2 relaxation times.
% to average over all the boxes in order to get the random bulk occupancy
% the final result will be mean of N2 by mean of N
% A=mean(N(:,:,(n-t)),3);
% A3=mean(N3,3);
% B=mean(A,2);
% B3=mean(N3,2);
% A=mean(N(:,:,1),1);
% A3=mean(N3(:,:,1),1);
% f=find(N4);
% A=N4(f);
% a=mean(A);
% A3=N3(f);
% a3=mean(A3);
% A=mean(N4,3);
% A3=mean(N3,3);
% f=find(A);
% AA=mean(A(f),2);
% a=mean(AA);
% AA3=mean(A3(f),2);
% a3=mean(AA3);
% qrand=(a3/a);
A=sum(N4,3);
B=sum(N3,3);
A=A/h3;
B=B/h3;
A1=sum(sum(A));
B1=sum(sum(B));
qrand=B1/A1;