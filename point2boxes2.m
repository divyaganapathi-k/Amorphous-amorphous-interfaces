% %W4
% R=load('D:\Raw Data\W4_0T_1-12000_trk(16,0,10)_DD(100).txt');
% for iii=1:1:1
% for ii=1:1:9
%     clearvars -except R ii iii
%     n=max(R(:,3));
%     t=4332*iii;
% %     t=350+(150*(iii-1));
%     sigmas=21.7;
%     boxsiz=0.05;
%     x=1560;
%     y=1160;
%     if ii==1
%      addon1=((0)*sigmas);
%      addon2=((0)*sigmas);
%     elseif ii==2
%         addon1=((0.05)*sigmas);
%         addon2=((0)*sigmas);
%     elseif ii==3
%         addon1=((0)*sigmas);
%         addon2=((0.05)*sigmas);
%     elseif ii==4
%         addon1=((-0.05)*sigmas);
%         addon2=((0)*sigmas);
%     elseif ii==5
%         addon1=((0)*sigmas);
%         addon2=((-0.05)*sigmas);
%     end
%     if ii==6
%        addon1=(((0.05)*sigmas)*cos(pi/4));
%        addon2=(((0.05)*sigmas)*sin(pi/4));
%     elseif ii==7
%          addon1=-(((0.05)*sigmas)*cos(pi/4));
%          addon2=(((0.05)*sigmas)*sin(pi/4));
%     elseif ii==8
%          addon1=-(((0.05)*sigmas)*cos(pi/4));
%          addon2=-(((0.05)*sigmas)*sin(pi/4));
%     elseif ii==9
%          addon1=(((0.05)*sigmas)*cos(pi/4));
%          addon2=-(((0.05)*sigmas)*sin(pi/4));
%     end
%     N=[];
%     parfor i=1:1:n
%         F=find(R(:,3)==i);
%         N(:,:,i)=hist3(R(F,1:2),'Edges',{((addon1):((boxsiz)*sigmas):x) ((addon2):((boxsiz)*sigmas):y)});
%     end
% %     averaging to get the percentage occupancy
%     H=find(N>1);
%     N(H)=1; 
%     N2=[];
%     for i=1:1:n-(2*t)
%         N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
%         N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
%     end
%     filename=strcat('D:\Newdataanalysis\point25boxes\W4point25boxes-shiftedinterface',num2str(iii),num2str(ii),'.mat');
%     save(filename,'-v7.3');
% end
% end

clearvars
%W8
R=load('D:\Raw Data\W8_0T_1-14000_trk(18,0,10)_DD(100).txt');
for iii=1:1:1
for ii=1:1:9
    clearvars -except R ii iii
    n=max(R(:,3));
    t=8*iii;
%     t=350+(150*(iii-1));
    sigmas=21.7;
    boxsiz=0.2;
    x=1560;
    y=1160;
    if ii==1
     addon1=((0)*sigmas);
     addon2=((0)*sigmas);
    elseif ii==2
        addon1=((0.05)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==3
        addon1=((0)*sigmas);
        addon2=((0.05)*sigmas);
    elseif ii==4
        addon1=((-0.05)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==5
        addon1=((0)*sigmas);
        addon2=((-0.05)*sigmas);
    end
    if ii==6
       addon1=(((0.05)*sigmas)*cos(pi/4));
       addon2=(((0.05)*sigmas)*sin(pi/4));
    elseif ii==7
         addon1=-(((0.05)*sigmas)*cos(pi/4));
         addon2=(((0.05)*sigmas)*sin(pi/4));
    elseif ii==8
         addon1=-(((0.05)*sigmas)*cos(pi/4));
         addon2=-(((0.05)*sigmas)*sin(pi/4));
    elseif ii==9
         addon1=(((0.05)*sigmas)*cos(pi/4));
         addon2=-(((0.05)*sigmas)*sin(pi/4));
    end
    N=[];
    parfor i=1:1:n
        F=find(R(:,3)==i);
        N(:,:,i)=hist3(R(F,1:2),'Edges',{((addon1):((boxsiz)*sigmas):x) ((addon2):((boxsiz)*sigmas):y)});
    end
%     averaging to get the percentage occupancy
    H=find(N>1);
    N(H)=1; 
    N2=[];
    for i=1:1:n-(2*t)
        N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
        N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
    end
    filename=strcat('D:\Newdataanalysis\point25boxes\W8point25boxes-shiftedinterface',num2str(iii),num2str(ii),'.mat');
    save(filename,'-v7.3');
end
end

clearvars
%W5
R=load('D:\Raw Data\W5_0T_1-12000_trk(16,0,10)_DD(100).txt');
for iii=1:1:1
for ii=1:1:9
    clearvars -except R ii iii
    n=max(R(:,3));
    t=105*iii;
%     t=350+(150*(iii-1));
    sigmas=21.7;
    boxsiz=0.2;
    x=1560;
    y=1160;
    if ii==1
     addon1=((0)*sigmas);
     addon2=((0)*sigmas);
    elseif ii==2
        addon1=((0.05)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==3
        addon1=((0)*sigmas);
        addon2=((0.05)*sigmas);
    elseif ii==4
        addon1=((-0.05)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==5
        addon1=((0)*sigmas);
        addon2=((-0.05)*sigmas);
    end
    if ii==6
       addon1=(((0.05)*sigmas)*cos(pi/4));
       addon2=(((0.05)*sigmas)*sin(pi/4));
    elseif ii==7
         addon1=-(((0.05)*sigmas)*cos(pi/4));
         addon2=(((0.05)*sigmas)*sin(pi/4));
    elseif ii==8
         addon1=-(((0.05)*sigmas)*cos(pi/4));
         addon2=-(((0.05)*sigmas)*sin(pi/4));
    elseif ii==9
         addon1=(((0.05)*sigmas)*cos(pi/4));
         addon2=-(((0.05)*sigmas)*sin(pi/4));
    end
    N=[];
    parfor i=1:1:n
        F=find(R(:,3)==i);
        N(:,:,i)=hist3(R(F,1:2),'Edges',{((addon1):((boxsiz)*sigmas):x) ((addon2):((boxsiz)*sigmas):y)});
    end
%     averaging to get the percentage occupancy
    H=find(N>1);
    N(H)=1; 
    N2=[];
    for i=1:1:n-(2*t)
        N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
        N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
    end
    filename=strcat('D:\Newdataanalysis\point25boxes\W5point25boxes-shiftedinterface',num2str(iii),num2str(ii),'.mat');
    save(filename,'-v7.3');
end
end

clearvars
%W2
R=load('D:\Raw Data\W2_0T_1-13500_trk(16,0,10)_DD(100).txt');
for iii=1:1:1
for ii=1:1:9
    clearvars -except R ii iii
    n=max(R(:,3));
    t=5250*iii;
%     t=350+(150*(iii-1));
    sigmas=21.7;
    boxsiz=0.2;
    x=1560;
    y=1160;
    if ii==1
     addon1=((0)*sigmas);
     addon2=((0)*sigmas);
    elseif ii==2
        addon1=((0.05)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==3
        addon1=((0)*sigmas);
        addon2=((0.05)*sigmas);
    elseif ii==4
        addon1=((-0.05)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==5
        addon1=((0)*sigmas);
        addon2=((-0.05)*sigmas);
    end
    if ii==6
       addon1=(((0.05)*sigmas)*cos(pi/4));
       addon2=(((0.05)*sigmas)*sin(pi/4));
    elseif ii==7
         addon1=-(((0.05)*sigmas)*cos(pi/4));
         addon2=(((0.05)*sigmas)*sin(pi/4));
    elseif ii==8
         addon1=-(((0.05)*sigmas)*cos(pi/4));
         addon2=-(((0.05)*sigmas)*sin(pi/4));
    elseif ii==9
         addon1=(((0.05)*sigmas)*cos(pi/4));
         addon2=-(((0.05)*sigmas)*sin(pi/4));
    end
    N=[];
    parfor i=1:1:n
        F=find(R(:,3)==i);
        N(:,:,i)=hist3(R(F,1:2),'Edges',{((addon1):((boxsiz)*sigmas):x) ((addon2):((boxsiz)*sigmas):y)});
    end
%     averaging to get the percentage occupancy
    H=find(N>1);
    N(H)=1; 
    N2=[];
    for i=1:1:n-(2*t)
        N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
        N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
    end
    filename=strcat('D:\Newdataanalysis\point25boxes\W2point25boxes-shiftedinterface',num2str(iii),num2str(ii),'.mat');
    save(filename,'-v7.3');
end
end