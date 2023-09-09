%to plot the most mobile particles and cluster them
% Dynamic heterogeneity
% fid = fopen('H:\coding\Results-glass1.txt');
% R=fscanf(fid, '%f %f %f %f',[4 inf]);
% fclose(fid);
% R=R';
% clearvars -except R %tracking done using positions
t=750*7; %this is the deltat value where the nongaussian parameter has the peak
t1=5250+t;
f=find(R(:,3)<=t1);
R=R(f,1:4);
H=circshift(R,-t);
%to plot the histogram
A=H-R;
% n=1;
G=[];
X=find (A(:,4)==0 & A(:,3)==t);
G(:,1)=((A(X,1)).^2+(A(X,2)).^2).^0.5;
G(:,2:5)=R(X,1:4);
% n=n+1;
%selecting 10% of the particles and defining them as most mobile particles
b=max(G(:,1));
hist(G(:,1),50);
%choosing the cut off
c=floor(0.1*length(G(:,1)));
[E,IX]=sort(G(:,1),'descend');
F=[]; D=[];
F=IX(1:c);
% D contains the most mobile particles
D(:,1:5)=G(F,1:5);  
n=max(R(:,3));
% f=fopen('mostmobile.txt','w+');
% fprintf(f,'%f %f %f \r\n', D');
% fclose(f);