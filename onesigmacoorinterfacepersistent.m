clearvars
% m1=45;
% m2=44;
for ii=1:1:9
%     load(strcat('E:\Shreyas-Dataanalysis\Analysis\Data-15\Data-151',num2str(i),'-2.mat'));
%     load(strcat('D:\Final Data\1ta-data analysis\W3\W3final-shiftedinterfaceta1',num2str(ii),'.mat'));
%     filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-shiftedinterfacetasigmas1',num2str(ii),'.mat');
    filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-persistancesigmas1',num2str(ii),'.mat');
%     filename=strcat('D:\Final Data\W3\W3final-shiftedinterface7',num2str(ii),'.mat');
    load(filename);
    m1=53;
    m2=13;
    f=find(AA(:,1)==m1 & AA(:,2)==m2);
    pint=AA(f,3);
    dummy1=matlab.lang.makeValidName(strcat('pint',num2str(ii)));
    eval([dummy1 '= pint;']);
end
C=intersect(pint1,pint2);
C1=intersect(C,pint3);
C2=intersect(C1,pint4);
C3=intersect(C2,pint5);
C4=intersect(C3,pint6);
C5=intersect(C4,pint7);
C6=intersect(C5,pint8);
timet=intersect(C6,pint9);
clearvars -except timet
lengthoft=timet;
for iii=1:1:1
for ii=1:1:9
%     clearvars -except ii iii
%     filename=strcat('D:\Final Data\W3\W3final-shiftedinterface7',num2str(ii),'.mat');
%     filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-shiftedinterfacetasigmas1',num2str(ii),'.mat');
    filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-persistancesigmas1',num2str(ii),'.mat');
    load(filename);
%     clearvars -except AA iii ii Np addon1 addoNp
%     filename=(strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-shiftedinterfacetasigmas1',num2str(ii),'.mat'));
%     filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-shiftedinterfacetasigmas',num2str(iii),num2str(ii),'.mat');
%     filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-shiftedinterfacetasigmas',num2str(iii),num2str(ii),'skip50.mat');    
%     load(filename);
    if ii==1
     addon1=((0)*sigmas);
     addoNp=((0)*sigmas);
    elseif ii==2
        addon1=((0.1)*sigmas);
        addoNp=((0)*sigmas);
    elseif ii==3
        addon1=((0)*sigmas);
        addoNp=((0.1)*sigmas);
    elseif ii==4
        addon1=((-0.1)*sigmas);
        addoNp=((0)*sigmas);
    elseif ii==5
        addon1=((0)*sigmas);
        addoNp=((-0.1)*sigmas);
    end
    if ii==6
       addon1=(((0.1)*sigmas)*cos(pi/4));
       addoNp=(((0.1)*sigmas)*sin(pi/4));
    elseif ii==7
         addon1=-(((0.1)*sigmas)*cos(pi/4));
         addoNp=(((0.1)*sigmas)*sin(pi/4));
    elseif ii==8
         addon1=-(((0.1)*sigmas)*cos(pi/4));
         addoNp=-(((0.1)*sigmas)*sin(pi/4));
    elseif ii==9
         addon1=(((0.1)*sigmas)*cos(pi/4));
         addoNp=-(((0.1)*sigmas)*sin(pi/4));
    end
    m1=53;
    m2=13;
    boxsiz=1;
    sigmas=21.7;
    coorinterface=[];
%     f=find(AA(:,1)==m1 & AA(:,2)==m2);
%     lengthoft=AA(f,3);
    h1=72;
    h2=54;
    for i=1:1:length(lengthoft);
        B=Np(:,:,lengthoft(i));
%         B=Np(:,:,i);
        F1=isnan(B);
        f= F1==1;
        B(f)=0;
        %for boxsize=1 the random occupancy is 0.1075
        %for boxsize=0.5 the random occupancy is 0.084
        F=find(B<=0.67);
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
                k=k+1;
            end
        end          
        x1=m1*(boxsiz)*(sigmas)+(addon1); 
        y1=m2*(boxsiz)*(sigmas)+(addoNp);    
        E=[];   
        E(:,1)=D(:,1)*(boxsiz)*(sigmas)+(addon1);
        E(:,2)=D(:,2)*(boxsiz)*(sigmas)+(addoNp);
        E(:,3)=D(:,3);
        E(:,4)=((((E(:,1)-x1).^2)+((E(:,2)-y1).^2)).^(0.5));
        E1=[]; E2=[];
        E1=sortrows(E,3);
        E2=unique(E1,'rows');
        E2=sortrows(E2,3);
%         E2(:,5)=i;
        E2(:,5)=lengthoft(i);
        E2(:,6)=ii;
        coorinterface=vertcat(coorinterface,E2);
    end
    dummy1=matlab.lang.makeValidName(strcat('coorinterface',num2str(ii)));
    eval([dummy1 '= coorinterface;']);
end
end
clear Np N R timet
filename=strcat('D:\Final Data\1ta-data analysis\W3\persistencefunction\W3-final-0.67-1box-',num2str(m1),'-',num2str(m2),'.mat');
save(filename,'-v7.3');