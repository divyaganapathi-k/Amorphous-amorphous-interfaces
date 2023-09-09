clearvars
% m1=45;
% m2=44;
for ii=1:1:9
%     load(strcat('E:\Shreyas-Dataanalysis\Analysis\Data-15\Data-151',num2str(i),'-2.mat'));
%     load(strcat('D:\Final Data\1ta-data analysis\W3\W3final-shiftedinterfaceta1',num2str(ii),'.mat'));
    filename=strcat('D:\Newdataanalysis\1boxes\W3\W3unpinned-shiftedinterfacetasigmas1',num2str(ii),'.mat');
    load(filename);
    m1=32;
    m2=48;
    f=find(AA(:,1)==m1 & AA(:,2)==m2);
    pint=AA(f,3);
    dummy1=matlab.lang.makeValidName(strcat('pint',num2str(ii)));
    eval([dummy1 '= pint;']);
end
C=intersect(pint1,pint2);
C1=intersect(C,pint3);
C2=intersect(C1,pint4);
C3=intersect(C2,pint5);
C4=intersect(C3,pint6);
C5=intersect(C4,pint7);
C6=intersect(C5,pint8);
timet=intersect(C6,pint9);
% filename=strcat('E:\Shreyas-Dataanalysis\Analysis\Data-15\coordinates-',num2str(m1),'-',num2str(m2),'.mat');
% save(filename,'time');