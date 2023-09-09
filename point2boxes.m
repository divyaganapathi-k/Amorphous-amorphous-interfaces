%W2
load('F:\Final Data\tstar-data analysis\W2\W2final-shiftedinterface71.mat');
% R=load('/localscratch/phydivya/W2_0T_1-13500_trk(16,0,10)_DD(100).txt');
for iii=1:1:1
for ii=1:1:1
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
        addon1=((0.25)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==3
        addon1=((0)*sigmas);
        addon2=((0.25)*sigmas);
    elseif ii==4
        addon1=((-0.25)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==5
        addon1=((0)*sigmas);
        addon2=((-0.25)*sigmas);
    end
    if ii==6
       addon1=(((0.25)*sigmas)*cos(pi/4));
       addon2=(((0.25)*sigmas)*sin(pi/4));
    elseif ii==7
         addon1=-(((0.25)*sigmas)*cos(pi/4));
         addon2=(((0.25)*sigmas)*sin(pi/4));
    elseif ii==8
         addon1=-(((0.25)*sigmas)*cos(pi/4));
         addon2=-(((0.25)*sigmas)*sin(pi/4));
    elseif ii==9
         addon1=(((0.25)*sigmas)*cos(pi/4));
         addon2=-(((0.25)*sigmas)*sin(pi/4));
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
%     filename=strcat('/localscratch/phydivya/W2point2boxes-shiftedinterface',num2str(iii),num2str(ii),'.mat');
    filename=strcat('D:\Newdataanalysis\point2boxes\W2point2boxes-shiftedinterface',num2str(iii),num2str(ii),'.mat');
    save(filename,'-v7.3');
end
end

%W7
load('F:\Final Data\W7\W7-shiftedinterface11.mat');
% R=load('/localscratch/phydivya/W7_0T_1-8000_trk(18,0,10)_DD(100).txt');
for iii=1:1:1
for ii=1:1:9
    clearvars -except R ii iii
    n=max(R(:,3));
    t=15*iii;
%     t=350+(150*(iii-1));
    sigmas=21.7;
    boxsiz=0.2;
    x=1560;
    y=1160;
    if ii==1
     addon1=((0)*sigmas);
     addon2=((0)*sigmas);
    elseif ii==2
        addon1=((0.25)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==3
        addon1=((0)*sigmas);
        addon2=((0.25)*sigmas);
    elseif ii==4
        addon1=((-0.25)*sigmas);
        addon2=((0)*sigmas);
    elseif ii==5
        addon1=((0)*sigmas);
        addon2=((-0.25)*sigmas);
    end
    if ii==6
       addon1=(((0.25)*sigmas)*cos(pi/4));
       addon2=(((0.25)*sigmas)*sin(pi/4));
    elseif ii==7
         addon1=-(((0.25)*sigmas)*cos(pi/4));
         addon2=(((0.25)*sigmas)*sin(pi/4));
    elseif ii==8
         addon1=-(((0.25)*sigmas)*cos(pi/4));
         addon2=-(((0.25)*sigmas)*sin(pi/4));
    elseif ii==9
         addon1=(((0.25)*sigmas)*cos(pi/4));
         addon2=-(((0.25)*sigmas)*sin(pi/4));
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
%     filename=strcat('/localscratch/phydivya/W7point2boxes-shiftedinterface',num2str(iii),num2str(ii),'.mat');
    filename=strcat('D:\Newdataanalysis\point2boxes\W7point2boxes-shiftedinterface',num2str(iii),num2str(ii),'.mat');
    save(filename,'-v7.3');
end
end