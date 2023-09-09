for ii=1:1:1
    clearvars -except R ii iii
    n=max(R(:,3));
%     n=13000;
    t=10;
%     t=350+(150*(iii-1));
    sigmas=21.7;
    boxsiz=1;
    x=1560;
    y=1160;
    if ii==1
     addon1=((0)*sigmas);
     addon2=((0)*sigmas);
    elseif ii==2
        addon1=((0.1)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==3
        addon1=((0)*sigmas);
        addon2=((0.1)*sigmas);
    elseif ii==4
        addon1=((-0.1)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==5
        addon1=((0)*sigmas);
        addon2=((-0.1)*sigmas);
    end
    if ii==6
       addon1=(((0.1)*sigmas)*cos(pi/4));
       addon2=(((0.1)*sigmas)*sin(pi/4));
    elseif ii==7
         addon1=-(((0.1)*sigmas)*cos(pi/4));
         addon2=(((0.1)*sigmas)*sin(pi/4));
    elseif ii==8
         addon1=-(((0.1)*sigmas)*cos(pi/4));
         addon2=-(((0.1)*sigmas)*sin(pi/4));
    elseif ii==9
         addon1=(((0.1)*sigmas)*cos(pi/4));
         addon2=-(((0.1)*sigmas)*sin(pi/4));
    end
    N=zeros(72,54,n);
    parfor i=1:1:n
        F=find(R(:,3)==i);
        N(:,:,i)=hist3(R(F,1:2),'Edges',{((addon1):((boxsiz)*sigmas):x) ((addon2):((boxsiz)*sigmas):y)});
    end
    N1=N;
%     averaging to get the percentage occupancy
    H=find(N>1);
    N(H)=1; 
    N2=[];
    parfor i=1:1:100
        N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
        N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
    end
    F=find(N2>0.9);
    AA=[];
    [AA(:,1), AA(:,2), AA(:,3)]=ind2sub(size(N2),F);
    BB=unique(AA(:,1:2),'rows');
    for j=1:1:length(BB)
        F1=find(AA(:,1)==BB(j,1) & AA(:,2)==BB(j,2));
        CC(j,1:2)=BB(j,1:2);
        CC(j,3)=length(F1);
    end
    DD=sortrows(CC,3);
end