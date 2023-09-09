t=48;
sigmas=21.7;
m1=1160;
m2=1560;
f=unique(coorinterface(:,5));
X=addon1:(0.5*sigmas):1560;
Y=addon2:(0.5*sigmas):1160;
for k=1:1:100
    i=f(k);
    A=N2(:,:,i);
    f1=find(A>0.084 & A<0.2);
    [I,J]=ind2sub(size(A),f1);
    I=(I*(0.5)*sigmas)+addon1-(0.25*sigmas);
    J=(J*(0.5)*sigmas)+addon2-(0.25*sigmas);
    scatter(I,J,10,'b','filled');
    set(gcf,'Position',[0 0 1560 1160])
    axis([0 1560 0 1160])
%     grid on
%     ax.LineWidth=(0.5)*sigmas;
    hold on
    for l=1:1:length(Y)
        xx=[Y(l) Y(l)];
        yy=[X(1) X(end)];
        plot(yy,xx,'Color','k','LineStyle','-');
        plot(yy,xx,'Color','k','LineStyle',':');
    end
    for l=1:1:length(X)
        xx=[Y(1) Y(end)];
        yy=[X(l) X(l)];
        plot(yy,xx,'Color','k','LineStyle','-');
        plot(yy,xx,'Color','k','LineStyle',':');
    end
%     f2=find(coorinterface(:,5)==i);
%     B=coorinterface(f2,1:2);
% %     B(:,1)=B(:,1)+((0.25)*sigmas);
% %     B(:,2)=B(:,2)+((0.25)*sigmas);
%     scatter(B(:,1),B(:,2),20,'m');
%     plot(B(:,1),B(:,2),'k');
%     C=[];
%     C(1,1:2)=B(1,1:2);
%     C(2,1:2)=B(end,1:2);
%     scatter(C(:,1),C(:,2),20,'m');
%     plot(C(:,1),C(:,2),'k');
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\W8-0-0.084\',num2str(i),'.tif'));
    close all
end