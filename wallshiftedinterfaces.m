for ii=1:1:9
    N=[];
    filename=strcat('E:\Wall-Data Analysis\W2\W2-wallshiftedinterface',num2str(ii),'.mat');
    load(filename);
    clearvars -except R ii N
    n=max(R(:,4));
    t=3465;
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
%     N=zeros(72,54,n);
%     parfor i=1:1:n
%         F=find(R(:,4)==i);
%         N(:,:,i)=hist3(R(F,1:2),'Edges',{((addon1):((boxsiz)*sigmas):x) ((addon2):((boxsiz)*sigmas):y)});
%     end
% %     averaging to get the percentage occupancy
%     H=find(N>1);
%     N(H)=1; 
    N2=[];
    parfor i=1:1:n-(2*t)
        N2(:,:,i)=mean((N(:,:,i:33:(i+t))).*(N(:,:,(i+t):33:(i+(2*t)))),3);
        N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:33:(i+t)),3)));
    end
    filename=strcat('E:\Wall-Data Analysis\W2\W2-wallshiftedinterface',num2str(ii),'-skip33.mat');
    save(filename,'-v7.3');
end