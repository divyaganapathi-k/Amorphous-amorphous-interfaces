clearvars
for j1=1:1:9
%     filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-shiftedinterfacetasigmas1',num2str(j1),'.mat');
    filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-persistancesigmas1',num2str(j1),'.mat');
%     filename=strcat('D:\Final Data\W3-1\W3unpinned-shiftedinterface3tstarsigmas1',num2str(j1),'.mat');
%     filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-persistance_3tstar_sigmas1',num2str(j1),'.mat');
    load(filename);
    f=find(AA(:,3)==3001);
    pins=AA(f,1:2);
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
% N3=zeros(72,54,9875);
% for j1=1:1:9
% %     filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-shiftedinterfacetasigmas1',num2str(j1),'.mat');
%     filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-persistancesigmas1',num2str(j1),'.mat');
% %     filename=strcat('E:\Wall-Data Analysis\W3\W3wall-persistancesigmas1',num2str(j1),'.mat');
% %     filename=strcat('D:\Final Data\W3-1\W3unpinned-shiftedinterface3tstarsigmas1',num2str(j1),'.mat');
% %     filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-persistance_3tstar_sigmas1',num2str(j1),'.mat');
%     load(filename);
% %     f=find(AA(:,3)==1);
% %     pins=AA(f,1:2);
% %     dummy1=matlab.lang.makeValidName(strcat('pins',num2str(j1)));
% %     eval([dummy1 '= pins;']);
%     N3=N3+Np; 
% end
% N3=N3/9;