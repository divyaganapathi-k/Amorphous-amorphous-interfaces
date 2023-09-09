% m1=58;
% m2=29;
f=find(AA(:,1)==m1 & AA(:,2)==m2);
lengthoft=AA(f,3);
coorinterface9=[];
for i=1:1:length(lengthoft)
    f=find(coorinterface(:,5)==lengthoft(i));
    coorframe=coorinterface(f,1:5);
    coorinterface9=vertcat(coorinterface9,coorframe);
end