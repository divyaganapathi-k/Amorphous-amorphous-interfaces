coorinterface=[];
for iii=1:1:1
for ii=1:1:1
    m1=325;
    m2=350;
    h1=720;
    h2=960;
    for i=1:1:1;
        B=H;
%         B=N2(:,:,i);
%         F1=isnan(B);
%         f= F1==1;
%         B(f)=0;
        %for boxsize=1 the random occupancy is 0.1075
        %for boxsize=0.5 the random occupancy is 0.084
        F=find(B<255);
        C=[];   
        [C(:,1),C(:,2)]=ind2sub([h1,h2],F);
        D=[];
        k=1;

        %scan in x direction
        % first quadrant
        f=find(C(:,2)==m2 & C(:,1)>=(m1+1) & C(:,1)<=h1);
        if isempty(f)==0
            breakvalue=m2;
        else
            f=find(C(:,2)==(m2-1) & C(:,1)>=(m1+1) & C(:,1)<=h1);
            if isempty(f)==0
                breakvalue=m2-1;
            else
              breakvalue=m2-2;
            end
        end
        for j=(m1+1):1:h1
            f=find(C(:,1)==j & C(:,2)<=m2);
            m=max(C(f,2));
                if isempty(m)==0
                    D(k,1)=j;
                    D(k,2)=m;
                    a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=a;
                    D(k,4)=1;
                    D(k,5)=1;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,1)==m1 & C(:,2)<=m2);
        if isempty(f)==0
            C1=C(f,2);
            C1=sort(C1);
            if (C1(end)==m2 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=m2)
                D(k,1)=m1;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=a;
                D(k,4)=1;
                D(k,5)=1;
                k=k+1;
            end
        end

        %second quadrant
        f=find(C(:,2)==m2 & C(:,1)<=(m1-1) & C(:,1)>=1);
        if isempty(f)==0
            breakvalue=m2;
        else
            f=find(C(:,2)==(m2-1) & C(:,1)<=(m1-1) & C(:,1)>=1);
            if isempty(f)==0
                breakvalue=m2-1;
            else
              breakvalue=m2-2;
            end
        end
        for j=(m1-1):-1:1
           f=find(C(:,1)==j & C(:,2)<=m2);
            m=max(C(f,2));
                if isempty(m)==0
                    D(k,1)=j;
                    D(k,2)=m;
                    a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=pi-a;
                    D(k,4)=1;
                    D(k,5)=1;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,1)==m1 & C(:,2)<=m2);
        if isempty(f)==0
            C1=C(f,2);
            C1=sort(C1);
            if (C1(end)==m2 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=m2)
                D(k,1)=m1;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=pi-a;
                D(k,4)=1;
                D(k,5)=1;
                k=k+1;
            end
        end

        %third quadrant
        f=find(C(:,2)==m2 & C(:,1)<=(m1-1) & C(:,1)>=1);
        if isempty(f)==0
            breakvalue=m2;
        else
            f=find(C(:,2)==(m2+1) & C(:,1)<=(m1-1) & C(:,1)>=1);
            if isempty(f)==0
                breakvalue=m2+1;
            else
              breakvalue=m2+2;
            end
        end
        for j=(m1-1):-1:1
            f=find(C(:,1)==j & C(:,2)>=m2);
            m=min(C(f,2));
                if isempty(m)==0
                    D(k,1)=j;
                    D(k,2)=m;
                    a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=pi+a;
                    D(k,4)=1;
                    D(k,5)=1;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,1)==m1 & C(:,2)>=m2);
        if isempty(f)==0
            C1=C(f,2);
            C1=sort(C1,'descend');
            if (C1(end)==m2 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=m2)
                D(k,1)=m1;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=pi+a;
                D(k,4)=1;
                D(k,5)=1; 
                k=k+1;
            end
        end

        %fourth quadrant
        f=find(C(:,2)==m2 & C(:,1)>=(m1+1) & C(:,1)<=h1);
        if isempty(f)==0
            breakvalue=m2;
        else
            f=find(C(:,2)==(m2+1) & C(:,1)>=(m1+1) & C(:,1)<=h1);
            if isempty(f)==0
                breakvalue=m2+1;
            else
              breakvalue=m2+2;
            end
        end
        for j=(m1+1):1:h1
           f=find(C(:,1)==j & C(:,2)>=m2);
            m=min(C(f,2));
                if isempty(m)==0
                    D(k,1)=j;
                    D(k,2)=m;
                    a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=(2*pi)-a;
                    D(k,4)=1;
                    D(k,5)=1;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end 
        end
        f=find(C(:,1)==m1 & C(:,2)>=m2);
        if isempty(f)==0
            C1=C(f,2);
            C1=sort(C1,'descend');
            if (C1(end)==m2 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=m2)
                D(k,1)=m1;
                D(k,2)=m;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=(2*pi)-a;
                D(k,4)=1;
                D(k,5)=1;
                k=k+1;
            end
        end

        %y scan
        %first quadrant
         f=find(C(:,1)==m1 & C(:,2)<=(m2-1) & C(:,2)>=1);
        if isempty(f)==0
            breakvalue=m1;
        else
            f=find(C(:,1)==(m1+1) & C(:,2)<=(m2-1) & C(:,2)>=1);
            if isempty(f)==0
                breakvalue=m1+1;
            else
              breakvalue=m1+2;
            end
        end
        for j=(m2-1):-1:1
            f=find(C(:,1)>=m1 & C(:,2)==j);
            m=min(C(f,1));
                if isempty(m)==0
                    D(k,2)=j;
                    D(k,1)=m;
                    a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=a;
                    D(k,4)=2;
                    D(k,5)=2;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,2)==m2 & C(:,1)>=m1);
        if isempty(f)==0
            C1=C(f,1);
            C1=sort(C1,'descend');
            if (C1(end)==m1 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=m1)
                D(k,2)=m2;
                D(k,1)=m;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                   aa=(a/(2*pi));
                   a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=a;
                D(k,4)=2;
                D(k,5)=2;
                k=k+1;
            end
        end

        %second quadrant
         f=find(C(:,1)==m1 & C(:,2)<=(m2-1) & C(:,2)>=1);
        if isempty(f)==0
            breakvalue=m1;
        else
            f=find(C(:,1)==(m1-1) & C(:,2)<=(m2-1) & C(:,2)>=1);
            if isempty(f)==0
                breakvalue=m1-1;
            else
              breakvalue=m1-2;
            end
        end
        for j=(m2-1):-1:1
            f=find(C(:,1)<=m1 & C(:,2)==j);
            m=max(C(f,1));
                if isempty(m)==0
                    D(k,2)=j;
                    D(k,1)=m;
                    a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=pi-a;
                    D(k,4)=2;
                    D(k,5)=2;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,2)==m2 & C(:,1)<=m1);
        if isempty(f)==0
            C1=C(f,1);
            C1=sort(C1);
            if (C1(end)==m1 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=m1)
                D(k,2)=m2;
                D(k,1)=m;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=pi-a;
                D(k,4)=2;
                D(k,5)=2;
                k=k+1;
            end
        end

        %third quadrant
        f=find(C(:,1)==m1 & C(:,2)>=(m2+1) & C(:,2)<=h2);
        if isempty(f)==0
            breakvalue=m1;
        else
            f=find(C(:,1)==(m1-1) & C(:,2)>=(m2+1) & C(:,2)<=h2);
            if isempty(f)==0
                breakvalue=m1-1;
            else
              breakvalue=m1-2;
            end
        end
        for j=(m2+1):1:h2
            f=find(C(:,1)<=m1 & C(:,2)==j);
            m=max(C(f,1));
                if isempty(m)==0
                    D(k,2)=j;
                    D(k,1)=m;
                    a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=pi+a;
                    D(k,4)=2;
                    D(k,5)=2;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,2)==m2 & C(:,1)<=m1);
        if isempty(f)==0
            C1=C(f,1);
            C1=sort(C1);
            if (C1(end)==m1 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=m1)
                D(k,2)=m2;
                D(k,1)=m;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=pi+a;
                D(k,4)=2;
                D(k,5)=2;
                k=k+1;
            end
        end

        %fourth quadrant
         f=find(C(:,1)==m1 & C(:,2)>=(m2+1) & C(:,2)<=h2);
        if isempty(f)==0
            breakvalue=m1;
        else
            f=find(C(:,1)==(m1+1) & C(:,2)>=(m2+1) & C(:,2)<=h2);
            if isempty(f)==0
                breakvalue=m1+1;
            else
              breakvalue=m1+2;
            end
        end
        for j=(m2+1):1:h2
            f=find(C(:,1)>=m1 & C(:,2)==j);
            m=min(C(f,1));
                if isempty(m)==0
                    D(k,2)=j;
                    D(k,1)=m;
                    a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                    if a>(2*pi)
                        aa=(a/(2*pi));
                        a=a-(floor(aa)*(2*pi));
                    end
                    D(k,3)=(2*pi)-a;
                    D(k,4)=2;
                    D(k,5)=2;
                    k=k+1;
                    if m==breakvalue
                        break
                    end
                end
        end
        f=find(C(:,2)==m2 & C(:,1)>=m1);
        if isempty(f)==0
            C1=C(f,1);
            C1=sort(C1,'descend');
            if (C1(end)==m1 && length(C1)>1)
                m=C1(end-1);
            else
                m=C1(end);
            end
            if (isempty(m)==0 && m~=m1)
                D(k,2)=m2;
                D(k,1)=m;
                a=atan(abs((D(k,2)-m2)/(D(k,1)-m1)));
                if a>(2*pi)
                    aa=(a/(2*pi));
                    a=a-(floor(aa)*(2*pi));
                end
                D(k,3)=(2*pi)-a;
                D(k,4)=2;
                D(k,5)=2;
                k=k+1;
            end
        end
%  *(boxsiz)*(sigmas)+(addon1);       
% *(boxsiz)*(sigmas)+(addon2);        
        x1=m1;
        y1=m2;
        E=[];   
        E(:,1)=D(:,1);
        E(:,2)=D(:,2);
        E(:,3)=D(:,3);
        E(:,4)=((((E(:,1)-x1).^2)+((E(:,2)-y1).^2)).^(0.5));
        E(:,5)=D(:,5);
        E1=[]; E2=[];
        E1=sortrows(E,3);
        E2=unique(E1,'rows');
        E2=sortrows(E2,3);
%         E2(:,5)=i;
        E2(:,6)=i;
        E2(:,7)=ii;
        coorinterface=vertcat(coorinterface,E2);
    end
    dummy1=matlab.lang.makeValidName(strcat('coorinterface',num2str(ii)));
    eval([dummy1 '= coorinterface;']);
end
end
% clear N2 N R timet
% filename=strcat('D:\Final Data\1ta-data analysis\W2\W2-final-0.67-0.15-box-',num2str(m1),'-',num2str(m2),'forimage.mat');
% save(filename,'-v7.3');