clearvars
for j1=1:1:9
%     filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacehalftasigmas1',num2str(j1),'.mat');
%     filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(j1),'.mat');
    filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-persistancesigmas1',num2str(j1),'.mat');
    load(filename);
    F=find(Np>=0.8);
    AA=[];
    [AA(:,1), AA(:,2), AA(:,3)]=ind2sub(size(Np),F);
    clearvars -except AA j1
    filename=strcat('D:\Newdataanalysis\1boxes\W2\AA_persistent_',num2str(j1),'_point8.mat');
    save(filename);
end