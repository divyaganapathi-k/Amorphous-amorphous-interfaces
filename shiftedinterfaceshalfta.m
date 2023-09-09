for iii=1:1:1
for ii=1:1:9
    filename=strcat('D:\Newdataanalysis\1boxes\W4\W4unpinned-shiftedinterfacetasigmas',num2str(iii),num2str(ii),'.mat');
    load(filename);
    clearvars -except R ii iii N
    n=max(R(:,3));
    t=2166;
    sigmas=21.7;
    x=1560;
    y=1160;
    N2=[];
    parfor i=1:1:n-(2*t)
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
    filename=strcat('D:\Newdataanalysis\1boxes\W4\W4unpinned-shiftedinterfacehalftasigmas',num2str(iii),num2str(ii),'.mat');
    save(filename,'-v7.3');
end
end