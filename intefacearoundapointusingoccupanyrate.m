%to find if the occupancies around a point by griding them out
n=1000;
t=64;
%20sigma griding length
sigmas=21.7;
N=[];
%size of the whole image
x=1560;
y=1160;
%below the centre of the particle around which the grid has to be created
x1=602.335;
y1=705.452;
Areamatrix=[];
Areamatrix(:,1)=R(:,3);
F=find(R(:,5)<=200);
Areamatrix(F,2)=20;
F=find(R(:,5)>200);
Areamatrix(F,2)=40;
for i=1:1:n
    F=find(R(:,3)==i);
    N(:,:,i)=hist3(R(F,1:2),'Edges',{(x1-((20.25)*sigmas)):((0.5)*sigmas):(x1+((20.25)*sigmas)) (y1-((20.25)*sigmas)):((0.5)*sigmas):(y1+((20.25)*sigmas))});
end
%his gives one to one mapping between image and the griding
%now to check if the occupancy of the box is more than 80%
N2=[];
% A(:,:,1)=sum(N(:,:,1:t),3);
for i=1:1:n-t
    N2(:,:,i)=mean(N(:,:,i:(i+t)),3);
%     A1=N(:,:,i);
%     A2=N(:,:,i+t);
%     A=A-N(:,:,i)-N(:,:,i+t);
end
% Nshifted=circshift(N,[0 0 -t]);
% N3=N.*Nshifted;
%box id of the box from which the interface has to be calculated
m1=41;
m2=41;
%to move around radially and to find the first box whose average is less
%than 0.1
for i=1:1:100
    B=N2(:,:,i);
    C=[];
    B=B';
    F=find(B<=0.7 & B~=0);
    [C(:,1),C(:,2)]=ind2sub([82,82],F);
    C(:,1)=C(:,1);
    C(:,2)=C(:,2);
    C(:,3)=((C(:,1)-m1).^2+(C(:,2)-m2).^2).^(0.5);
    for k=1:1:length(C)
        a=atan((abs(C(k,2)-m2)/abs(C(k,1)-m1)));
        if  a>(2*pi)
            a=a-(2*pi);
        end
        if C(k,1)>m1  && C(k,2)>m2                                     %first quadrant
            C(k,4)=a;
        elseif C(k,1)<m1 && C(k,2)>m2                              % second quadrant
            C(k,4)=pi-a;
        elseif  C(k,1)<m1 && C(k,2)<m2                              %third quadrant
             C(k,4)=pi+a;
        elseif C(k,1)>m1 && C(k,2)<m2                               %fourth quadrant
             C(k,4)=(2*pi)-a;         
        end
    end
    %now to find the boxes in particular windows
    j=1;
    mostmob=[];
    angle=(pi/18);
    for theta=angle:angle:(2*pi)
        D=[];D1=[];
        F1=find(C(:,4)<=theta & C(:,4)>=(theta-angle));
        if isempty(F1)==0
            D(:,1)=C(F1,3);
            D(:,2)=F1;
            D1=sortrows(D,1);
            mostmob(j,1)=x1-((20.25)*sigmas)+(((C(D1(1,2),1))-1)*(0.5)*(sigmas));
            mostmob(j,2)=y1-((20.25)*sigmas)+(((C(D1(1,2),2))-1)*(0.5)*(sigmas));
%             mostmob(j,1:3)=C(D1(1,2),1:3);
             j=j+1;
        end
    end
%     m11=901;
%     m22=1201;
%     C11=zeros(m11,m22);
%     for l=i:1:(i+t)
%         A11=imread(strcat('C:\Users\Divya\Desktop\codes\W3-dedrifted\',num2str(j),'.tif'));
%         B11=im2bw(A11);
%         C11=B11+C11;
%     end
%     C11=C11/t;
%     imshow(C11);
%     hold on 
    f=find(R(:,3)==i);
    scatter(R(f,1),R(f,2),Areamatrix(f,2),'k','filled');
    hold on
    scatter(x1,y1,40,'b','filled');
    axis([0 1560 0 1160])
    scatter(mostmob(:,1),mostmob(:,2),40,'r','filled');
%     hold on
%     for p=1:1:(length(mostmob(:,1))-1)
%         line(mostmob(p:(p+1),1),mostmob(p:(p+1),2));
%     end
%     dist=[];
%     dist(1,1:2)=mostmob(1,1:2);
%     dist(2,1:2)=mostmob(end,1:2);
%     line(dist(:,1),dist(:,2));
%     hold off
    plot(mostmob(:,1),mostmob(:,2));
    mostmob1=[];
    mostmob1(1,1:2)=mostmob(1,1:2);
    mostmob1(2,1:2)=mostmob(end,1:2);
    plot(mostmob1(:,1),mostmob1(:,2),'y');
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\interfaces\W3-final(0.5)\',num2str(i),'.tif'));
end