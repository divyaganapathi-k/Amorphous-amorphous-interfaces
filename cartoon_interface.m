figure
imshow(sup_draw1);
hold on
%plotting xscan
f=find(coorinterface1(:,5)==1);
scatter(coorinterface1(f,2),coorinterface1(f,1),10,'r','filled');
% plotting zscan
f=find(coorinterface1(:,5)==2);
scatter(coorinterface1(f,2),coorinterface1(f,1),10,'b','filled');
%lotting xzscan
scatter(coorinterface1(:,2),coorinterface1(:,1),10,'g','filled');