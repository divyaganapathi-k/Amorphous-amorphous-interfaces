%to draw different interfaces simultaneously
coorinterface=[]; 
for jj=1:1:4
    if jj==1
            m1=58; m2=23;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        elseif jj==2
            m1=58; m2=17;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        elseif jj==3
            m1=48; m2=27;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
        elseif jj==4
            m1=42; m2=30;
            b21=(2*m1)-1; b22=(2*m2)-1;
            m11=b21+0.5;
            m22=b22+0.5;
            x1=m11*(boxsiz)*(sigmas);
            y1=m22*(boxsiz)*(sigmas); 
    end
    f=find(AA(:,1)==m1 & AA(:,2)==m2);
    dummy=AA(f,3);
    x1=m1*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
    y1=m2*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
    b11=(2*m1); b12=(2*m2)-1; % I quadrant
    b21=(2*m1)-1; b22=(2*m2)-1; % II quadrant
    b31=(2*m1)-1; b32=(2*m2); % III quadrant
    b41=(2*m1); b42=(2*m2); % IV quadrant
    m11=b21+0.5;
    m22=b22+0.5;
    
    for i=1:1:length(dummy)
        B=N2(:,:,dummy(i)); 
%         B=N2(:,:,i);
        F1=isnan(B);
        f=find(F1==1);
        B(f)=0;
        %for boxsize=1 the random occupancy is 0.1075
        F=find(B<=0.2 & B>=0.077);
        C=[];   
        [C(:,1),C(:,2)]=ind2sub([h1,h2],F);
        D=[];
        k=1;

        %scan in x direction
        % first quadrant
        f=find(C(:,2)==b12 & C(:,1)>=(b11+1) & C(:,1)<=h1);
        if isempty(f)==0
            breakvalue=b12;
        else
            f=find(C(:,2)==(b12-1) & C(:,1)>=(b11+1) & C(:,1)<=h1);
            if isempty(f)==0
                breakvalue=b12-1;
            else
              breakvalue=b12-2;
            end
        end
        for j=(b11+1):1:h1
            f=find(C(:,1)==j & C(:,2)<=b12);
            m=max(C(f,2));
                if isempty(m)==0
                    D(k,1)=j;
                    D(k,2)=m;
                    a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=a;
                    D(k,4)=1;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,1)==b11 & C(:,2)<=b12);
        if isempty(f)==0
            C1=C(f,2);
            C1=sort(C1);
            if (C1(end)==b12 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=b12)
                D(k,1)=b11;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=a;
                D(k,4)=1;
                k=k+1;
            end
        end

        %second quadrant
        f=find(C(:,2)==b22 & C(:,1)<=(b21-1) & C(:,1)>=1);
        if isempty(f)==0
            breakvalue=b22;
        else
            f=find(C(:,2)==(b22-1) & C(:,1)<=(b21-1) & C(:,1)>=1);
            if isempty(f)==0
                breakvalue=b22-1;
            else
              breakvalue=b22-2;
            end
        end
        for j=(b21-1):-1:1
           f=find(C(:,1)==j & C(:,2)<=b22);
            m=max(C(f,2));
                if isempty(m)==0
                    D(k,1)=j;
                    D(k,2)=m;
                    a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=pi-a;
                    D(k,4)=1;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,1)==b21 & C(:,2)<=b22);
        if isempty(f)==0
            C1=C(f,2);
            C1=sort(C1);
            if (C1(end)==b22 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=b22)
                D(k,1)=b21;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=pi-a;
                D(k,4)=1;
                k=k+1;
            end
        end

        %third quadrant
        f=find(C(:,2)==b32 & C(:,1)<=(b31-1) & C(:,1)>=1);
        if isempty(f)==0
            breakvalue=b32;
        else
            f=find(C(:,2)==(b32+1) & C(:,1)<=(b31-1) & C(:,1)>=1);
            if isempty(f)==0
                breakvalue=b32+1;
            else
              breakvalue=b32+2;
            end
        end
        for j=(b31-1):-1:1
            f=find(C(:,1)==j & C(:,2)>=b32);
            m=min(C(f,2));
                if isempty(m)==0
                    D(k,1)=j;
                    D(k,2)=m;
                    a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=pi+a;
                    D(k,4)=1;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,1)==b31 & C(:,2)>=b32);
        if isempty(f)==0
            C1=C(f,2);
            C1=sort(C1,'descend');
            if (C1(end)==b32 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=b32)
                D(k,1)=b31;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=pi+a;
                D(k,4)=1;
                k=k+1;
            end
        end

        %fourth quadrant
        f=find(C(:,2)==b42 & C(:,1)>=(b41+1) & C(:,1)<=h1);
        if isempty(f)==0
            breakvalue=b42;
        else
            f=find(C(:,2)==(b42+1) & C(:,1)>=(b41+1) & C(:,1)<=h1);
            if isempty(f)==0
                breakvalue=b42+1;
            else
              breakvalue=b42+2;
            end
        end
        for j=(b41+1):1:h1
           f=find(C(:,1)==j & C(:,2)>=b42);
            m=min(C(f,2));
                if isempty(m)==0
                    D(k,1)=j;
                    D(k,2)=m;
                    a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=(2*pi)-a;
                    D(k,4)=1;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end 
        end
        f=find(C(:,1)==b41 & C(:,2)>=b42);
        if isempty(f)==0
            C1=C(f,2);
            C1=sort(C1,'descend');
            if (C1(end)==b42 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=b42)
                D(k,1)=b41;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=(2*pi)-a;
                D(k,4)=1;
                k=k+1;
            end
        end

        %y scan
        %first quadrant
         f=find(C(:,1)==b11 & C(:,2)<=(b12-1) & C(:,2)>=1);
        if isempty(f)==0
            breakvalue=b11;
        else
            f=find(C(:,1)==(b11+1) & C(:,2)<=(b12-1) & C(:,2)>=1);
            if isempty(f)==0
                breakvalue=b11+1;
            else
              breakvalue=b11+2;
            end
        end
        for j=(b12-1):-1:1
            f=find(C(:,1)>=b11 & C(:,2)==j);
            m=min(C(f,1));
                if isempty(m)==0
                    D(k,2)=j;
                    D(k,1)=m;
                    a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=a;
                    D(k,4)=2;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,2)==b12 & C(:,1)>=b11);
        if isempty(f)==0
            C1=C(f,1);
            C1=sort(C1,'descend');
            if (C1(end)==b11 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=b11)
                D(k,2)=b12;
                D(k,1)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                   aa=(a/(2*pi));
                   a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=a;
                D(k,4)=2;
                k=k+1;
            end
        end

        %second quadrant
         f=find(C(:,1)==b21 & C(:,2)<=(b22-1) & C(:,2)>=1);
        if isempty(f)==0
            breakvalue=b21;
        else
            f=find(C(:,1)==(b21-1) & C(:,2)<=(b22-1) & C(:,2)>=1);
            if isempty(f)==0
                breakvalue=b21-1;
            else
              breakvalue=b21-2;
            end
        end
        for j=(b22-1):-1:1
            f=find(C(:,1)<=b21 & C(:,2)==j);
            m=max(C(f,1));
                if isempty(m)==0
                    D(k,2)=j;
                    D(k,1)=m;
                    a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=pi-a;
                    D(k,4)=2;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,2)==b22 & C(:,1)<=b21);
        if isempty(f)==0
            C1=C(f,1);
            C1=sort(C1);
            if (C1(end)==b21 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=b21)
                D(k,2)=b22;
                D(k,1)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=pi-a;
                D(k,4)=2;
                k=k+1;
            end
        end

        %third quadrant
        f=find(C(:,1)==b31 & C(:,2)>=(b32+1) & C(:,2)<=h2);
        if isempty(f)==0
            breakvalue=b31;
        else
            f=find(C(:,1)==(b31-1) & C(:,2)>=(b32+1) & C(:,2)<=h2);
            if isempty(f)==0
                breakvalue=b31-1;
            else
              breakvalue=b31-2;
            end
        end
        for j=(b32+1):1:h2
            f=find(C(:,1)<=b31 & C(:,2)==j);
            m=max(C(f,1));
                if isempty(m)==0
                    D(k,2)=j;
                    D(k,1)=m;
                    a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=pi+a;
                    D(k,4)=2;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,2)==b32 & C(:,1)<=b31);
        if isempty(f)==0
            C1=C(f,1);
            C1=sort(C1);
            if (C1(end)==b31 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=b31)
                D(k,2)=b32;
                D(k,1)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=pi+a;
                D(k,4)=2;
                k=k+1;
            end
        end

        %fourth quadrant
         f=find(C(:,1)==b41 & C(:,2)>=(b42+1) & C(:,2)<=h2);
        if isempty(f)==0
            breakvalue=b41;
        else
            f=find(C(:,1)==(b41+1) & C(:,2)>=(b42+1) & C(:,2)<=h2);
            if isempty(f)==0
                breakvalue=b41+1;
            else
              breakvalue=b41+2;
            end
        end
        for j=(b42+1):1:h2
            f=find(C(:,1)>=b41 & C(:,2)==j);
            m=min(C(f,1));
                if isempty(m)==0
                    D(k,2)=j;
                    D(k,1)=m;
                    a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=(2*pi)-a;
                    D(k,4)=2;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,2)==b42 & C(:,1)>=b41);
        if isempty(f)==0
            C1=C(f,1);
            C1=sort(C1,'descend');
            if (C1(end)==b41 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=b41)
                D(k,2)=b42;
                D(k,1)=m;
                a=atan(abs((D(k,2)-m22)/(D(k,1)-m11)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=(2*pi)-a;
                D(k,4)=2;
                k=k+1;
            end
        end

        E=D(:,1:2)*(boxsiz)*(sigmas)-((boxsiz/2)*(sigmas));
        E(:,3)=D(:,3);
        E1=sortrows(E,3);
        E2=unique(E1,'rows');
        E2=sortrows(E2,3);
        E2(:,4)=i;
        E2(:,5)=jj;
        coorinterface=vertcat(coorinterface,E2);
    end
end

% for i=1:20:length(dummy)
%     for j=1:1:1
%         F=find(coorinterface(:,4)==i & coorinterface(:,5)==j);
%         if j==1
%             m1=58; m2=23;
%             b21=(2*m1)-1; b22=(2*m2)-1;
%             m11=b21+0.5;
%             m22=b22+0.5;
%             x1=m11*(boxsiz)*(sigmas);
%             y1=m22*(boxsiz)*(sigmas); 
%         elseif j==2
%             m1=58; m2=17;
%             b21=(2*m1)-1; b22=(2*m2)-1;
%             m11=b21+0.5;
%             m22=b22+0.5;
%             x1=m11*(boxsiz)*(sigmas);
%             y1=m22*(boxsiz)*(sigmas); 
%         elseif j==3
%             m1=48; m2=27;
%             b21=(2*m1)-1; b22=(2*m2)-1;
%             m11=b21+0.5;
%             m22=b22+0.5;
%             x1=m11*(boxsiz)*(sigmas);
%             y1=m22*(boxsiz)*(sigmas); 
%         elseif j==4
%             m1=42; m2=30;
%             b21=(2*m1)-1; b22=(2*m2)-1;
%             m11=b21+0.5;
%             m22=b22+0.5;
%             x1=m11*(boxsiz)*(sigmas);
%             y1=m22*(boxsiz)*(sigmas); 
%         end
%         coor=coorinterface(F,1:3);
%         coordi=[];
%         coordi(:,1)=coorinterface(F,3);
%         coordi(:,2)=((((coor(:,1)-x1).^2)+((coor(:,2)-y1).^2)).^(0.5));
%         filtered=[];
%         filtered=medfilt1(coordi(:,2));
%         scatter(x1,y1,30,'b','filled');
%         hold on
%         xlim([000 1600])
%         ylim([0 1200])
%         axis ij
%         scatter(coor(:,1),coor(:,2),20,'r','filled');
%         plot(coor(:,1),coor(:,2),'LineWidth',1);
%         coor1=[];
%         coor1(1,1:2)=coor(1,1:2);
%         coor1(2,1:2)=coor(end,1:2);
%         plot(coor1(:,1),coor1(:,2),'LineWidth',1);
%         coordinates=[];
%         [coordinates(:,1),coordinates(:,2)]=pol2cart(((2*pi)-coordi(:,1)),filtered);
%         coordinates(:,1)=coordinates(:,1)+x1;
%         coordinates(:,2)=coordinates(:,2)+y1;
%         scatter(coordinates(:,1),coordinates(:,2),20,'r','filled');
%         plot(coordinates(:,1),coordinates(:,2),'LineWidth',1);
%         coor1=[];
%         coor1(1,1:2)=coordinates(1,1:2);
%         coor1(2,1:2)=coordinates(end,1:2);
%         plot(coor1(:,1),coor1(:,2),'LineWidth',1);
%     end
%     hold off
%     h=gcf;
%     saveas(h,strcat('C:\Users\Divya\Desktop\codes\W2-simultaneousinterfaces3\',num2str(i),'.tif'));
% end

