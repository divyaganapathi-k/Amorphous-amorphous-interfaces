clearvars
% N3=zeros(72,54,9030);
for j1=1:1:9
%     filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-shiftedinterfacetasigmas1',num2str(j1),'.mat');
    filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-persistancesigmas1',num2str(j1),'.mat');
%     filename=strcat('D:\Final Data\W3-1\W3unpinned-shiftedinterface3tstarsigmas1',num2str(j1),'.mat');
    load(filename);
    f=find(DD(:,3)>=2000);
    pins=DD(f,1:2);
    dummy1=matlab.lang.makeValidName(strcat('pins',num2str(j1)));
    eval([dummy1 '= pins;']);
%     N3=N3+N2;
end
% N3=N3/9;
C=intersect(pins1,pins2,'rows');
C1=intersect(C,pins3,'rows');
C2=intersect(C1,pins4,'rows');
C3=intersect(C2,pins5,'rows');
C4=intersect(C3,pins6,'rows');
C5=intersect(C4,pins7,'rows');
C6=intersect(C5,pins8,'rows');
alpin=intersect(C6,pins9,'rows');