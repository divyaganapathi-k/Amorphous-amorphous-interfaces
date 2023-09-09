%fid = fopen('E:\Manasa_data\WallData\Data\W4\W4_0T_S2_1-6000_trk(16,0,10)_DD(10).txt','r');%name of the input file with format
%a = fscanf(fid, '%f\t%f\t%f\t%f\t%f\n',[5,inf]);
%fclose(fid);
clearvars -except R
H=[];
H=drift_loop(R,80);
c2=H;
max(c2(:,4))
pos = c2;
pos(1:100,:)
maxtrk=max(pos(:,4))
maxfrm=max(pos(:,3))
minfrm=min(pos(:,3))
num1=maxfrm-minfrm
dx=zeros(1,maxfrm);
dy=zeros(1,maxfrm);
time=zeros(1,maxfrm);
R4=zeros(1,maxfrm);
num=zeros(maxfrm,1);
mem=0;
num1 = max(pos(:,3))
fq = fopen('E:\Divya\data analysis\ file1.txt','w');
for j=1:5:maxfrm-minfrm
    j
    posc=circshift(pos,-j);
    dif=posc-pos;
    len=zeros(num1,1);
    Num = min(j+mem,maxfrm);
        for i=j:1:Num
            k=find((dif(:,3)==i)& dif(:,4)==0);
            len(i)=length(k);
            if (length(k)~=0)
                dx(i) = dx(i)+sum(dif(k,1).^2);
                dy(i) = dy(i)+sum(dif(k,2).^2);
                time(i)=i;
                R4(i) = R4(i) + sum(((dif(k,1).^2+dif(k,2).^2)).^2);
            end
            num(i)=num(i)+length(k);
        end
end
MSDx=(dx)./(num)';
MSDy=(dy)./(num)';
R4=R4./(num)';
fin=[time',MSDx',MSDy',MSDx'+MSDy',R4',num];
fin;
f = find(isnan(fin(:,2)));
fin(f,:)=[];
fprintf(fq,'%i\t%i\t%i\t%i\t%i\t%i\n',fin');
fclose(fq);