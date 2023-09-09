%overlapping the grids with 0.1 occupancy rate on the averaged image of the
%same duration
n=1000;
t=16;
%20sigma griding length
sigmas=21.7;
N=[];
%size of the whole image
x=1560;
y=1160;
%below the centre of the particle around which the grid has to be created
x1=602.335;
y1=705.452;
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
 C=zeros(y,x);
for m=1:1:t
    F=find(R(:,3)==m);
    A1=255*(ones(1160,1560,'uint8'));
    imshow(A1);
    hold on
    viscircles(R(F,1:2),R(F,5),'EdgeColor','k');
    hold off
    saveas(gcf,'test.tif');
    B1=imread('test.tif');
    B1=im2bw(B1,0.5);
    B1=~B1;
    B1=imfill(B1,'holes');
    B1=~B1; 
end
for i=1:1:n
    F=find(R(:,3)==i);
    A=255*(ones(1160,1560,'uint8'));
    imshow(A);
    hold on
    viscircles(R(F,1:2),R(F,5),'EdgeColor','k');
    hold off
    saveas(gcf,'test.tif');
    B=imread('test.tif');
    B=im2bw(B,0.5);
    B=~B;
    B=imfill(B,'holes');
    B=~B;
     B=N2(:,:,i);
    C=[];
    F=find(B<=0.1 & B~=0);
    B=B';
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
    for theta=(pi/18):(pi/18):(2*pi)
        D=[];D1=[];
        F1=find(C(:,4)<=theta & C(:,4)>=(theta-pi/180));
        if isempty(F1)==0
            D(:,1)=C(F1,3);
            D(:,2)=F1;
            D1=sortrows(D);
            mostmob(j,1)=x1-((20.25)*sigmas)+(((C(D1(1,2),1))-1)*(0.5)*(sigmas));
            mostmob(j,2)=y1-((20.25)*sigmas)+(((C(D1(1,2),2))-1)*(0.5)*(sigmas));
%             mostmob(j,1:3)=C(D1(1,2),1:3);
             j=j+1;
        end
    end

    scatter(x1,y1,40,'b','filled');
    axis([0 1560 0 1160])
    scatter(mostmob(:,1),mostmob(:,2),40,'r','filled');
    plot(mostmob(:,1),mostmob(:,2));
    mostmob1=[];
    mostmob1(1,1:2)=mostmob(1,1:2);
    mostmob1(2,1:2)=mostmob(end,1:2);
    plot(mostmob1(:,1),mostmob1(:,2),'y');
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\interfaces\W4-test2\',num2str(i),'.tif'));
end