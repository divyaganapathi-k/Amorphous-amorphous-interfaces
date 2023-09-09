%MSD using circshift
%clearvars -except R
%add dedrifting part
%fid = fopen('Results-Data65.txt');
%R=fscanf(fid, '%f %f %f %f',[4 inf]);
%fclose(fid);
%R=R';
H=[];
H=drift_loop(R,80);
%H=H';
%H=R;
a=length(H(:,1)); %H is the dedrifted matrix which is the input to this program
b=max(H(:,3));
displacementsquarex=zeros(1,b);
displacementsquarey=zeros(1,b);
displacementsquare=zeros(1,b);
 m=1;
for i=1:5:b
    j=1;
    k=0;
    G=circshift(H,-i);
    A=G-H;
    while(j<=a)
        if (A(j,3)==i && A(j,4)==0)
            displacementsquarex(1,m)=displacementsquarex(1,m)+(A(j,1))^2;
            displacementsquarey(1,m)=displacementsquarey(1,m)+(A(j,2))^2;
            k=k+1;
        end
        j=j+1;
    end
    if k==0
        break
    end
    displacementsquarex(1,m)=displacementsquarex(1,m)/k;
    displacementsquarey(1,m)=displacementsquarey(1,m)/k;
    displacementsquare(1,m)=displacementsquarex(1,m)+displacementsquarey(1,m);
    deltat(m)=i;
    m=m+1;
end
m=m-1;
Dx(1,:)=displacementsquarex(1,1:m);
Dy(1,:)=displacementsquarey(1,1:m);
D(1,:)=displacementsquare(1,1:m);
res=[deltat',Dx',Dy',D'];
fid=fopen('msd65.txt','w+');
fprintf(fid, '%f\t%f\t%f\t%f \r\n',res');
fclose(fid);
