%to find out the least mobile particle in the whole set
n=max(R(:,3));
t=1;
ta=440;
%load dedrifted data
% f=fopen('1.txt');
% R=fscanf(f, '%f %f %f %f',[4 inf]);
% fclose(f);
% R=R';
H=circshift(R,-ta);
A=H-R;
A(:,5)=R(:,4);
A(:,6)=R(:,3);
F=find(A(:,3)==ta & A(:,4)==0);
B=A(F,:);
A=[];
A(:,1)=(B(:,1).^2+B(:,2).^2).^(0.5);
A(:,2)=B(:,6);
A(:,3)=B(:,5);
%to find out the least mobile particles
C=sortrows(A,1);
a=floor((0.15)*(length(A)));
D=C(1:a,:);
% count=min(D(:,3)):1:max(D(:,3)); %this are the idnumbers which are there in the least mobile matrix
c=max(R(:,4));
count=1:1:c;
F=histc(D(:,3),count);
[F1 F2]=sort(F,'descend');
G=[];
G(:,1)=F1(1:20);
G(:,2)=F2(1:20);
[b1 b2]=mode(D(:,3));
% f=find(D(:,3)==21582);
% E=D(f,2:3);
% E=sortrows(E,1);
%coordinates of the least mobile particle
I=[];
for j=1:1:length(G)
     f=find(R(:,4)==(G(j,2)));
     I=vertcat(I, R(f,1:4));
end
f=find(R(:,4)==b1);
coorleast=R(f,1:3);
% for i=1:1:n
%     F=find(R(:,3)==i);
%     A1=255*(ones(1160,1560,'uint8'));
%     imshow(A1);
%     hold on
%     viscircles(R(F,1:2),R(F,5),'EdgeColor','k');
%     hold off
%     saveas(gcf,'test.tif');
% %     B1=imread('test.tif');
%     B1=im2bw(B,0.5);
%     B1=~B1;
%     B1=imfill(B1,'holes');
%     B1=~B1;
%     f=find(I(:,3)==i);
%     scatter(I(f,1),I(f,2),10);
%     axis([0 1560 0 1160])
%     h=gcf;
%     saveas(h,strcat('F:\Data-Divya\leastmobile-test1\',num2str(i),'.tif'));
% end