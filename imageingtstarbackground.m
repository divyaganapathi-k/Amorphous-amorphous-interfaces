for j1=1:1:9 
    load(strcat('D:\Newdataanalysis\1boxes\W8\W8unpinned-shiftedinterfacetasigmas1',num2str(j1),'.mat'));
    clearvars -except N n j1
    t=20;
    parfor j=1:1:n-(2*t)
        N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
        N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
    end
    f=find(isnan(N2));
    N2(f)=0;
    filename=strcat('D:\Newdataanalysis\1boxes\W8\W8unpinned-shiftedinterfacetstarsigmas',num2str(j1),'.mat');
    save(filename,'-v7.3');
end
