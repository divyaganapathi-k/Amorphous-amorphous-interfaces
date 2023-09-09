coorinterface=[];
for ii=1:1:4
     if ii==1
            m1=58; m2=23;
            x1=m1*(boxsiz)*(sigmas);
            y1=m2*(boxsiz)*(sigmas); 
        elseif ii==2
            m1=58; m2=17;
            x1=m1*(boxsiz)*(sigmas);
            y1=m2*(boxsiz)*(sigmas); 
        elseif ii==3
            m1=48; m2=27;
            x1=m1*(boxsiz)*(sigmas);
            y1=m2*(boxsiz)*(sigmas); 
        elseif ii==4
            m1=42; m2=30;
            x1=m1*(boxsiz)*(sigmas);
            y1=m2*(boxsiz)*(sigmas); 
    end
    for i=1:1:(n-(2*t))
        B=N2(:,:,i);
    %     f=find(B==0);
    % %     B(f)=NaN;
        F=find(B<=0.3 & B>=0.1075);
        C=[];
        [C(:,1),C(:,2)]=ind2sub([h1,h2],F);
        D=[];
        k=1;
        for j1=m1:-1:1 %third quadrant
            f=find(C(:,1)==j1 & C(:,2)>=m2);
            m=min(C(f,2));
            if isempty(m)==0
                D(k,1)=j1;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=pi+a;
                k=k+1;
                if m==m2
                    break
                end
            end
        end
        for j2=j1:1:m1 %second quadrant
            f=find(C(:,1)==j2 & C(:,2)<=m2);
            m=max(C(f,2));
            if isempty(m)==0
                D(k,1)=j2;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=pi-a;
                k=k+1;
            end
        end
        for j3=m1:1:h1 %first quadrant
            f=find(C(:,1)==j3 & C(:,2)<=m2);
             m=max(C(f,2));
            if isempty(m)==0
                D(k,1)=j3;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=a;
                k=k+1;
                if m==m2
                    break
                end
            end
        end
        for j4=j3:-1:m1 %fourth quadrant
            f=find(C(:,1)==j4 & C(:,2)>=m2);
            m=min(C(f,2));
            if isempty(m)==0
                D(k,1)=j4;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=(2*pi)-a;
                k=k+1;
            end
        end
        for k1=m2:1:h2 %third quadrant
            f=find(C(:,2)==k1 & C(:,1)<=m1);
            m=max(C(f,1));
            if isempty(m)==0
                D(k,1)=m;
                D(k,2)=k1;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=pi+a;
                k=k+1;
            end
            if m==m1;
                break 
            end
        end
        for k2=k1:-1:m2 %fourth quadrant
            f=find(C(:,2)==k2 & C(:,1)>=m1);
            m=min(C(f,1));
            if isempty(m)==0
                D(k,1)=m;
                D(k,2)=k2;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=(2*pi)-a;
                k=k+1;
            end
        end
        for k3=m2:-1:1 %first quadrant
            f=find(C(:,2)==k3 & C(:,1)>=m1);
            m=min(C(f,1));
            if isempty(m)==0
                D(k,1)=m;
                D(k,2)=k3;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=a;
                k=k+1;
            end
            if m==m1
                break
            end
        end
        for k4=k3:1:m2 %second quadrant
            f=find(C(:,2)==k4 & C(:,1)<=m1);
            m=max(C(f,1));
            if isempty(m)==0
                D(k,1)=m;
                D(k,2)=k4;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    a=a-(2*pi);
                end
                D(k,3)=pi-a;
                k=k+1;
            end
        end
    % %     [D1,id1,id2]=unique(D,'rows');
    %     D(:,3)=atan((D(:,2)-m2)./(D(:,1)-m1));
        E=D(:,1:2)*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
        E(:,3)=D(:,3);
        E1=sortrows(E,3);
        E2=unique(E1,'rows');
        E2=sortrows(E2,3);
        E2(:,4)=i;
        E2(:,5)=ii;
    %     pcolor(X,Y,B');
    %     set(gca,'YDir','reverse');
    %     colorbar
    %     colormap(jet);
    %     caxis([0.05 1]);
    %     hold on
    %     scatter(x1,y1,20,'y','filled');
    %     scatter(E2(:,1),E2(:,2),10,'c','filled');
    %     plot(E2(:,1),E2(:,2),'c','LineWidth',2);
    %     E1=[];
    %     E1(1,1:2)=E(1,1:2);
    %     E1(2,1:2)=E(end,1:2);
    %     plot(E1(:,1),E1(:,2),'c','LineWidth',2);
    %     hold off
        coorinterface=vertcat(coorinterface,E2);
    %     h=gcf;
    %     saveas(h,strcat('C:\Users\Divya\Desktop\codes\W4-overlapfunction(0.5)22\',num2str(i),'.tif')); 
    end
end
% %smoothened interface fitting
smoothenedinterface=[];
for i=1:1:(n-(2*t))
    for ii=1:1:4
        if ii==1
            m1=58; m2=23;
            x1=m1*(boxsiz)*(sigmas);
            y1=m2*(boxsiz)*(sigmas); 
        elseif ii==2
            m1=58; m2=17;
            x1=m1*(boxsiz)*(sigmas);
            y1=m2*(boxsiz)*(sigmas); 
        elseif ii==3
            m1=48; m2=27;
            x1=m1*(boxsiz)*(sigmas);
            y1=m2*(boxsiz)*(sigmas); 
        elseif ii==4
            m1=42; m2=30;
            x1=m1*(boxsiz)*(sigmas);
            y1=m2*(boxsiz)*(sigmas); 
        end
        F=find(coorinterface(:,4)==i & coorinterface(:,5)==ii);
        coor=coorinterface(F,1:3);
        coor(:,4)=((((coor(:,1)-x1).^2)+((coor(:,2)-y1).^2)).^(0.5));
        scatter(x1,y1,30,'b','filled');
        xlim([0 1600])
        ylim([0 1200])
        hold on
        scatter(coor(:,1),coor(:,2),20,'r','filled');
        plot(coor(:,1),coor(:,2),'LineWidth',1);
        coor1=[];
        coor1(1,1:2)=coor(1,1:2);
        coor1(2,1:2)=coor(end,1:2);
        plot(coor1(:,1),coor1(:,2),'LineWidth',1);
    end
    hold off
    h=gcf;
    saveas(h,strcat('C:\Users\Divya\Desktop\codes\W2-interface1sigmasimult\',num2str(i),'.tif'));
end