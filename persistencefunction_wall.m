clearvars
for ii=1:1:9
    filename=strcat('E:\Wall-Data Analysis\W5\W5-wallshiftedinterface',num2str(ii),'.mat');
    load(filename);
    clearvars -except R N t ii
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
    filename=strcat('E:\Wall-Data Analysis\W5\W5wall-persistancesigmas1',num2str(ii),'.mat');
    save(filename,'-v7.3');
end

clearvars
for ii=1:1:9
    filename=strcat('E:\Wall-Data Analysis\W3\W3-wallshiftedinterface',num2str(ii),'.mat');
    load(filename);
    clearvars -except R N t ii
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
    filename=strcat('E:\Wall-Data Analysis\W3\W3wall-persistancesigmas1',num2str(ii),'.mat');
    save(filename,'-v7.3');
end

clearvars
for ii=1:1:9
    filename=strcat('E:\Wall-Data Analysis\W7\W7-wallshiftedinterface',num2str(ii),'.mat');
    load(filename);
    clearvars -except R N t ii
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
    filename=strcat('E:\Wall-Data Analysis\W7\W7wall-persistancesigmas1',num2str(ii),'.mat');
    save(filename,'-v7.3');
end

clearvars
for ii=1:1:9
    filename=strcat('E:\Wall-Data Analysis\W8\W8-wallshiftedinterface',num2str(ii),'.mat');
    load(filename);
    clearvars -except R N t ii
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
    filename=strcat('E:\Wall-Data Analysis\W8\W8wall-persistancesigmas1',num2str(ii),'.mat');
    save(filename,'-v7.3');
end