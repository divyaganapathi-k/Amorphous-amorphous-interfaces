%  clearvars
% for ii=1:1:9
%     filename=strcat('E:\Wall-Data Analysis\W2\W2-wallshiftedinterface',num2str(ii),'.mat');
%     load(filename);
%     clearvars -except R N ii 
%     t=6930;
%     n=max(R(:,4));
%     sigmas=21.7;
%     boxsiz=1;
%     H=find(N>1);
%     N(H)=1;
%     N1=parallel.pool.Constant(N);
%     Np=[];
%     parfor i=1:1:(n-(2*t))
%         Np(:,:,i)=mean(not(xor((N1.Value(:,:,i:(i+t))),(N1.Value(:,:,(i+t):(i+(2*t)))))),3); %#ok<PFBNS>
%     end
%     filename=strcat('E:\Wall_RefreeAnalysis\W2\W2wall-persistancesigmas1',num2str(ii),'.mat');
%     save(filename,'-v7.3');
% end

clearvars
for ii=1:1:9
    filename=strcat('E:\Wall-Data Analysis\W3\W3-wallshiftedinterface',num2str(ii),'.mat');
    load(filename);
    clearvars -except R N ii 
    t=917;
    n=max(R(:,4));
    sigmas=21.7;
    boxsiz=1;
    H=find(N>1);
    N(H)=1;
    N1=parallel.pool.Constant(N);
    Np=[];
    parfor i=1:1:(n-(2*t))
        Np(:,:,i)=mean(not(xor((N1.Value(:,:,i:(i+t))),(N1.Value(:,:,(i+t):(i+(2*t)))))),3); %#ok<PFBNS>
    end
    filename=strcat('E:\Wall_RefreeAnalysis\W3\W3wall-persistancesigmas7',num2str(ii),'.mat');
    save(filename,'-v7.3');
end

clearvars
for ii=1:1:9
    filename=strcat('E:\Wall-Data Analysis\W7\W7-wallshiftedinterface',num2str(ii),'.mat');
    load(filename);
    clearvars -except R N ii
    t=105;
    n=max(R(:,4));
    sigmas=21.7;
    boxsiz=1;
    H=find(N>1);
    N(H)=1;
    N1=parallel.pool.Constant(N);
    Np=[];
    parfor i=1:1:(n-(2*t))
        Np(:,:,i)=mean(not(xor((N1.Value(:,:,i:(i+t))),(N1.Value(:,:,(i+t):(i+(2*t)))))),3); %#ok<PFBNS>
    end
    filename=strcat('E:\Wall_RefreeAnalysis\W7\W7wall-persistancesigmas7',num2str(ii),'.mat');
    save(filename,'-v7.3');
end
% 
% clearvars
% for ii=1:1:9
%     filename=strcat('E:\Wall-Data Analysis\W8\W8-wallshiftedinterface',num2str(ii),'.mat');
%     load(filename);
%     clearvars -except R N ii
%     t=24;
%     n=max(R(:,4));
%     sigmas=21.7;
%     boxsiz=1;
%     H=find(N>1);
%     N(H)=1;
%     N1=parallel.pool.Constant(N);
%     Np=[];
%     parfor i=1:1:(n-(2*t))
%         Np(:,:,i)=mean(not(xor((N1.Value(:,:,i:(i+t))),(N1.Value(:,:,(i+t):(i+(2*t)))))),3); %#ok<PFBNS>
%     end
%     filename=strcat('E:\Wall_RefreeAnalysis\W8\W8wall-persistancesigmas1',num2str(ii),'.mat');
%     save(filename,'-v7.3');
% end