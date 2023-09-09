clearvars
rel_fms=3030;
N3=zeros(72,54,rel_fms);
for ii=1:1:9
    clearvars -except N3 ii rel_fms
    filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas1',num2str(ii),'.mat');
    load(filename);
    N3=N3+N2;
end
N3=N3/9;
clearvars -except N3 rel_fms
N3p=zeros(72,54,rel_fms);
for ii=1:1:9
    clearvars -except N3p ii N3 rel_fms
    filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-persistancesigmas1',num2str(ii),'.mat');
    load(filename);
    N3p=N3p+Np;
end
N3p=N3p/9;
correlation=zeros(rel_fms,2);
for i=1:1:rel_fms
    A1=N3(:,:,i);
    A2=N3p(:,:,i);
    f1=find(isnan(A1)==1);
    A1(f1)=0;
    f=find(A1<=0.15);
    B1=A1(f);
    B1=1-B1;
    B2=A2(f);
    correlation(i,1)=i;
    correlation(i,2)=corr2(B1,B2);
end