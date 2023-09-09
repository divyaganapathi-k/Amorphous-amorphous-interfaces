%to plot the most mobile particles and cluster them
% Dynamic heterogeneity
t=750; %this is the deltat value where the nongaussian parameter has the peak
mostmobile=[];
l=max(R(:,3));
parfor i=1:1:l
    f1=find(R(:,3)==i);
    f2=find(R(:,3)==t+i);
    R1=R(f1,1:5);
    R2=R(f2,1:5);
    [I,ia,ib]=intersect(R1(:,4),R2(:,4));
    R1=R1(ia,:);
    R2=R2(ib,:);
    R1=sortrows(R1,4);
    R2=sortrows(R2,4);
    A=R1-R2;
    % n=1;
    G=[];
    X=find (A(:,4)==0);
    G(:,1)=((A(X,1)).^2+(A(X,2)).^2).^0.5;
    G(:,2:6)=R1(X,1:5);
    G(:,7:8)=R2(X,1:2);
    % n=n+1;
    %selecting 10% of the particles and defining them as most mobile particles
    b=max(G(:,1));
    hist(G(:,1),50);
    %choosing the cut off
    c=floor(0.01*length(G(:,1)));
    [E,IX]=sort(G(:,1),'descend');
    F=[]; D=[];
    F=IX(1:c);
    % D contains the most mobile particles
    D(:,1:8)=G(F,1:8);  
    mostmobile=vertcat(mostmobile,D);
%     scatter(D(:,1),D(:,2),20,'filled');
%     hold on
%     scatter(R1(:,1),R1(:,2),40,'k');
%     axis([-30 1570 -20 960])
%     hold off
%     h=gcf;
%     saveas(h,strcat('D:\Newdataanalysis\mostmobile\W21\',num2str(i),'.tif'));
end
% H=imread('C:\Users\Divya\Desktop\W2-1.tif');
% imshow(H);
% hold on
% f=find(mostmobile(:,4)<=5250);
% mostmobile1=mostmobile(f,:);
% mostmobile1(:,2:3)=mostmobile1(:,2:3)/21.7;
% scatter(mostmobile1(:,3)*(477/44),mostmobile1(:,2)*(781/72),1,'k','filled');