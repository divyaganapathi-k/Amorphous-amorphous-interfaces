% theta=(pi/30):(pi/30):(2*pi-pi/10);
% totalinterface=zeros(57,(length(dummy)+1),4);
% for ii=1:1:4
%     totalinterface(:,1,ii)=theta';
%     for i=1:1:length(dummy)
%         f=find(coorinterface(:,4)==i & coorinterface(:,5)==ii);
%         coor=coorinterface(f,1:2);
%         if ii==1
%             m1=58; m2=23;
%             b21=(2*m1)-1; b22=(2*m2)-1;
%             m11=b21+0.5;
%             m22=b22+0.5;
%             x1=m11*(boxsiz)*(sigmas);
%             y1=m22*(boxsiz)*(sigmas); 
%         elseif ii==2
%             m1=58; m2=17;
%             b21=(2*m1)-1; b22=(2*m2)-1;
%             m11=b21+0.5;
%             m22=b22+0.5;
%             x1=m11*(boxsiz)*(sigmas);
%             y1=m22*(boxsiz)*(sigmas); 
%         elseif ii==3
%             m1=48; m2=27;
%             b21=(2*m1)-1; b22=(2*m2)-1;
%             m11=b21+0.5;
%             m22=b22+0.5;
%             x1=m11*(boxsiz)*(sigmas);
%             y1=m22*(boxsiz)*(sigmas); 
%         elseif ii==4
%             m1=42; m2=30;
%             b21=(2*m1)-1; b22=(2*m2)-1;
%             m11=b21+0.5;
%             m22=b22+0.5;
%             x1=m11*(boxsiz)*(sigmas);
%             y1=m22*(boxsiz)*(sigmas); 
%         end
%         interface=[];
%         interface(:,1)=coorinterface(f,3);
%         interface(:,2)=((((coor(:,1)-x1).^2)+((coor(:,2)-y1).^2)).^(0.5));
%         intface=[];
%         [c,ia,ic]=unique(interface(:,1));
%         intface(:,1:2)=interface(ia,1:2);
%         interface1=interp1(intface(:,1),intface(:,2),theta','linear','extrap');
%         totalinterface(:,i+1,ii)=interface1;
%     end
% end
avginterface=[];
for ii=1:1:4
    avginterface(:,:,ii)=tsmovavg(totalinterface(:,:,ii),'s',9,2);
%     avginterface(:,end+1,ii)=theta';
end
avginterface=avginterface(:,10:end,:);
for ii=1:1:4
    avginterface(:,12023,ii)=theta';
end
coordinates=[];
for i=1:20:length(dummy)
    for j=1:2:4
        coordinates(:,1)= avginterface(:,end,j);
        coordinates(:,2)=avginterface(:,(i+1),j);
        if j==1
            m1=58; m2=23;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        elseif j==2
            m1=58; m2=17;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        elseif j==3
            m1=48; m2=27;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        elseif j==4
            m1=42; m2=30;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        end
        coordinates1=[];
        [coordinates1(:,1),coordinates1(:,2)]=pol2cart(coordinates(:,1),coordinates(:,2));
        coordinates1(:,1)=coordinates1(:,1)+x1;
        coordinates1(:,2)=coordinates1(:,2)+y1;
        scatter(x1,y1,30,'b','filled');
        hold on
        xlim([000 1600])
        ylim([0 1200])
        axis ij
        scatter(coordinates1(:,1),coordinates1(:,2),20,'r','filled');
        plot(coordinates1(:,1),coordinates1(:,2),'LineWidth',1);
        coor1=[];
        coor1(1,1:2)=coordinates1(1,1:2);
        coor1(2,1:2)=coordinates1(end,1:2);
        plot(coor1(:,1),coor1(:,2),'LineWidth',1);
    end
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\W2-simultaneousinterfacesavg\',num2str(i),'.tif'));
end