%to find most mobile particles around the least mobile particle
tic
n=100;
sigmas=21.7;
ta=64;
%to find the most mobile particles
H=circshift(R,-ta);
A=H-R;
G=[];
X=find (A(:,4)==0 & A(:,3)==ta);
G(:,1)=((A(X,1)).^2+(A(X,2)).^2).^(0.5);
G(:,2)=R(X,1);
G(:,3)=R(X,2);
G(:,4)=R(X,3);
%selecting 10% of the particles and defining them as most mobile particles
b=max(G(:,1));
% hist(G(:,1),50);
%choosing the cut off
c=floor(0.15*length(G(:,1)));
[E,IX]=sort(G(:,1),'descend');
F=[]; D=[];
F=IX(1:c);
D(:,1:3)=G(F,2:4);  
% D contains the coordinates and frame no of most mobile particles
clearvars -except D R coorleast n
%finding frame by frame the mostmobile around one least mobile
for i=1:1:n
    F=find(D(:,3)==i);
    %coordinates of the least mobile particle in the frame
    x=coorleast(i,1);
    y=coorleast(i,2);
    A=D(F,:);
    B=[];
    B(:,1)=A(:,1)-x;
    B(:,2)=A(:,2)-y;
    B(:,3)=(B(:,1).^2+B(:,2).^2).^(0.5);
    %arctan conditions to get the correct angles
   for k=1:1:length(B)
        a=atan((abs(B(k,2))/abs(B(k,1))));
        if  a>(2*pi)
            a=a-(2*pi);
        end
        if B(k,1)>0  && B(k,2)>0                                     %first quadrant
            B(k,4)=a;
        elseif B(k,1)<0 && B(k,2)>0                              % second quadrant
            B(k,4)=pi-a;
        elseif  B(k,1)<0 && B(k,2)<0                              %third quadrant
             B(k,4)=pi+a;
        elseif B(k,1)>0 && B(k,2)<0                               %fourth quadrant
             B(k,4)=(2*pi)-a;         
        end
    end
    j=1; mostmob=[];
    for theta=(pi/18):(pi/18):(2*pi)
        C=[];
        F=find(B(:,4)<=theta & B(:,4)>=(theta-pi/18));
        if isempty(F)==0
            C(:,1)=B(F,3);
            C(:,2)=F;
            C1 =sortrows(C);
            mostmob(j,1:3)=A(C1(1,2),1:3);
             j=j+1;
        end
        %to get the coordinates of the particle which is nearest to the
        %least mobile in the given theta range
    end
    scatter(x,y,40,'b','filled');
    axis([0 1560 0 1160])
    hold on 
    scatter(mostmob(:,1),mostmob(:,2),40,'r','filled');
    plot(mostmob(:,1),mostmob(:,2));
    mostmob1=[];
    mostmob1(1,1:2)=mostmob(1,1:2);
    mostmob1(2,1:2)=mostmob(end,1:2);
    plot(mostmob1(:,1),mostmob1(:,2),'y');
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\interfaces\W3\',num2str(i),'.tif'));
end
toc