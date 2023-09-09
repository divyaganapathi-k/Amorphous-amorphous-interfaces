for iii=1:1:1
    for ii=1:1:9
       filename=strcat('I:\Data-backup\Final Data\1ta-data analysis\W4\W4final-shiftedinterfaceta',num2str(iii),num2str(ii),'.mat');
       load(filename);
       N2=[];
       parfor i=1:1:n-(2*t)
           N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
           N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
       end
        filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W4\W4finalwithnan-shiftedinterface',num2str(iii),num2str(ii),'.mat');
        save(filename);
    end
end

for iii=1:1:1
    for ii=1:1:9
       filename=strcat('I:\Data-backup\Final Data\1ta-data analysis\W7\W7final-shiftedinterfaceta',num2str(iii),num2str(ii),'.mat');
       load(filename);
       N2=[];
       parfor i=1:1:n-(2*t)
           N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
           N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
       end
        filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W7\W7finalwithnan-shiftedinterface',num2str(iii),num2str(ii),'.mat');
        save(filename);
    end
end

for iii=1:1:1
    for ii=1:1:9
       filename=strcat('I:\Data-backup\Final Data\1ta-data analysis\W5\W5final-shiftedinterfaceta',num2str(iii),num2str(ii),'.mat');
       load(filename);
       N2=[];
       parfor i=1:1:n-(2*t)
           N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
           N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
       end
        filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W5\W5finalwithnan-shiftedinterface',num2str(iii),num2str(ii),'.mat');
        save(filename);
    end
end

for iii=1:1:1
    for ii=1:1:9
       filename=strcat('I:\Data-backup\Final Data\1ta-data analysis\W8\W8final-shiftedinterfaceta',num2str(iii),num2str(ii),'.mat');
       load(filename);
       N2=[];
       parfor i=1:1:n-(2*t)
           N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
           N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
       end
        filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W8\W8finalwithnan-shiftedinterface',num2str(iii),num2str(ii),'.mat');
        save(filename);
    end
end

for iii=1:1:1
    for ii=1:1:9
%        filename=strcat('I:\Data-backup\Final Data\1ta-data analysis\W4\W4final-shiftedinterfaceta',num2str(iii),num2str(ii),'.mat');
       filename=strcat('I:\Data-backup\Final Data\W2\W2final-shiftedinterface',num2str(iii),num2str(ii),'.mat');
       load(filename);
       N2=[];
       parfor i=1:1:n-(2*t)
           N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
           N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
       end
        filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W2\W2finalwithnan-shiftedinterface',num2str(iii),num2str(ii),'.mat');
        save(filename);
    end
end