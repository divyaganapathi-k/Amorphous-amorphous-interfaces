clearvars
for j1=1:1:9
    filename=strcat('D:\Newdataanalysis\1boxes\W4\W4unpinned-shiftedinterfacetasigmas1',num2str(j1),'.mat');
%     filename=strcat('D:\Newdataanalysis\1boxes\W4\W4unpinned-persistancesigmas1',num2str(j1),'.mat');
%     filename=strcat('D:\Final Data\W4\W4final-shiftedinterface7',num2str(j1),'.mat');
    load(filename);
    F=find(N2>=0.95);
    AA=[]; 
    [AA(:,1), AA(:,2), AA(:,3)]=ind2sub(size(N2),F);
    BB=unique(AA(:,1:2),'rows');
    CC=zeros(length(BB),3);
    for j=1:1:length(BB)
        F1=find(AA(:,1)==BB(j,1) & AA(:,2)==BB(j,2));
        CC(j,1:2)=BB(j,1:2);
        CC(j,3)=length(F1);
    end
    DD=sortrows(CC,3);
    f=find(DD(:,3)>=3000);
    pins=DD(f,1:2);
    dummy1=matlab.lang.makeValidName(strcat('pins',num2str(j1)));
    eval([dummy1 '= pins;']);
end
C=intersect(pins1,pins2,'rows');
C1=intersect(C,pins3,'rows');
C2=intersect(C1,pins4,'rows');
C3=intersect(C2,pins5,'rows');
C4=intersect(C3,pins6,'rows');
C5=intersect(C4,pins7,'rows');
C6=intersect(C5,pins8,'rows');
alpin=intersect(C6,pins9,'rows');