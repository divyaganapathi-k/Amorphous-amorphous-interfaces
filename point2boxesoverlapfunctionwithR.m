%W4
load('F:\Final Data\1ta-data analysis\W4\W4final-shiftedinterfaceta11.mat');
clear N N2
avoverlap=[];
f=find(AA(:,1)==m1 & AA(:,2)==m2);
timecoordinates=AA(f,3);
midpoint1=(5*m1)-2-(0.5);
midpoint2=(5*m2)-2-(0.5);
load('D:\Newdataanalysis\point2boxes\W4point2boxes-shiftedinterface11.mat');
for i=1:1:length(f)
    A=N2(:,:,timecoordinates(i));
    f=find(A>=0);
    B=[];
    [B(:,1),B(:,2)]=ind2sub(size(A),f);
    C=B-0.5;
    G=[];
    for j=1:1:100
        D=((C(:,1)-midpoint1).^2+(C(:,2)-midpoint2).^2).^(0.5);
        f1=find(D<(j) & D>=(j-1));
        E=[];
        E(:,1)=B(f1,1);
        E(:,2)=B(f1,2);
        e=sub2ind(size(A),E(:,1),E(:,2)); 
        F=A(e);
        m=mean(F);
        G(j,1)=j;
        if isnan(m)==0
            G(j,2)=m;
        else
            G(j,2)=0;
        end
        G(j,3)=i;
    end
     avoverlap=vertcat(avoverlap,G);
end
overlapfunction=zeros(100,2);
for j=1:1:100
    f2=find(avoverlap(:,1)==j);
    values=avoverlap(f2,2);
    m=mean(values);
    overlapfunction(j,1)=j;
    overlapfunction(j,2)=m;
end
clear N N2
filename='D:\Newdataanalysis\point2boxes\W4-overlapfunctionwithR.mat';
save(filename);

%W5
clearvars
load('F:\Final Data\1ta-data analysis\W5\W5final-shiftedinterfaceta11.mat');
clear N N2
avoverlap=[];
f=find(AA(:,1)==m1 & AA(:,2)==m2);
timecoordinates=AA(f,3);
midpoint1=(5*m1)-2-(0.5);
midpoint2=(5*m2)-2-(0.5);
load('D:\Newdataanalysis\point2boxes\W5point2boxes-shiftedinterface11.mat');
for i=1:1:length(f)
    A=N2(:,:,timecoordinates(i));
    f=find(A>=0);
    B=[];
    [B(:,1),B(:,2)]=ind2sub(size(A),f);
    C=B-0.5;
    G=[];
    for j=1:1:100
        D=((C(:,1)-midpoint1).^2+(C(:,2)-midpoint2).^2).^(0.5);
        f1=find(D<(j) & D>=(j-1));
        E=[];
        E(:,1)=B(f1,1);
        E(:,2)=B(f1,2);
        e=sub2ind(size(A),E(:,1),E(:,2)); 
        F=A(e);
        m=mean(F);
        G(j,1)=j;
        if isnan(m)==0
            G(j,2)=m;
        else
            G(j,2)=0;
        end
        G(j,3)=i;
    end
     avoverlap=vertcat(avoverlap,G);
end
overlapfunction=zeros(100,2);
for j=1:1:100
    f2=find(avoverlap(:,1)==j);
    values=avoverlap(f2,2);
    m=mean(values);
    overlapfunction(j,1)=j;
    overlapfunction(j,2)=m;
end
clear N N2
filename='D:\Newdataanalysis\point2boxes\W5-overlapfunctionwithR.mat';
save(filename);

%W8
load('F:\Final Data\1ta-data analysis\W8\W8final-shiftedinterfaceta11.mat');
clear N N2
avoverlap=[];
f=find(AA(:,1)==m1 & AA(:,2)==m2);
timecoordinates=AA(f,3);
midpoint1=(5*m1)-2-(0.5);
midpoint2=(5*m2)-2-(0.5);
load('D:\Newdataanalysis\point2boxes\W8point2boxes-shiftedinterface11.mat');
for i=1:1:length(f)
    A=N2(:,:,timecoordinates(i));
    f=find(A>=0);
    B=[];
    [B(:,1),B(:,2)]=ind2sub(size(A),f);
    C=B-0.5;
    G=[];
    for j=1:1:100
        D=((C(:,1)-midpoint1).^2+(C(:,2)-midpoint2).^2).^(0.5);
        f1=find(D<(j) & D>=(j-1));
        E=[];
        E(:,1)=B(f1,1);
        E(:,2)=B(f1,2);
        e=sub2ind(size(A),E(:,1),E(:,2)); 
        F=A(e);
        m=mean(F);
        G(j,1)=j;
        if isnan(m)==0
            G(j,2)=m;
        else
            G(j,2)=0;
        end
        G(j,3)=i;
    end
     avoverlap=vertcat(avoverlap,G);
end
overlapfunction=zeros(100,2);
for j=1:1:100
    f2=find(avoverlap(:,1)==j);
    values=avoverlap(f2,2);
    m=mean(values);
    overlapfunction(j,1)=j;
    overlapfunction(j,2)=m;
end
clear N N2
filename='D:\Newdataanalysis\point2boxes\W8-overlapfunctionwithR.mat';
save(filename);

% load('F:\Final Data\1ta-data analysis\W4\W4final-shiftedinterfaceta11.mat');
% clear N N2
% avoverlap=[];
% f=find(AA(:,1)==m1 & AA(:,2)==m2);
% timecoordinates=AA(f,3);
% load('D:\Newdataanalysis\point2boxes\W4point2boxes-shiftedinterface11.mat');
% for i=1:1:length(f)
%     A=N2(:,:,timecoordinates(i));
%     f=find(A>=0);
%     B=[];
%     [B(:,1),B(:,2)]=ind2sub(size(A),f);
%     C=B-0.5;
%     G=[];
%     for j=1:1:100
%         D=((C(:,1)-midpoint1).^2+(C(:,2)-midpoint2).^2).^(0.5);
%         f1=find(D<(j) & D>=(j-1));
%         E=[];
%         E(:,1)=B(f1,1);
%         E(:,2)=B(f1,2);
%         e=sub2ind(size(A),E(:,1),E(:,2)); 
%         F=A(e);
%         m=mean(F);
%         G(j,1)=j;
%         G(j,2)=m;
%         G(j,3)=i;
%     end
%      avoverlap=vertcat(avoverlap,G);
% end
% overlapfunction=zeros(30,2);
% for j=1:1:30
%     f2=find(avoverlap(:,1)==j);
%     values=avoverlap(f2,2);
%     m=mean(values);
%     overlapfunction(j,1)=j;
%     overlapfunction(j,2)=m;
% end
% clear N N2
% filename='D:\Newdataanalysis\point2boxes\W4-overlapfunctionwithR.mat';
% 
% load('F:\Final Data\1ta-data analysis\W4\W4final-shiftedinterfaceta11.mat');
% clear N N2
% avoverlap=[];
% f=find(AA(:,1)==m1 & AA(:,2)==m2);
% timecoordinates=AA(f,3);
% load('D:\Newdataanalysis\point2boxes\W4point2boxes-shiftedinterface11.mat');
% for i=1:1:length(f)
%     A=N2(:,:,timecoordinates(i));
%     f=find(A>=0);
%     B=[];
%     [B(:,1),B(:,2)]=ind2sub(size(A),f);
%     C=B-0.5;
%     G=[];
%     for j=1:1:100
%         D=((C(:,1)-midpoint1).^2+(C(:,2)-midpoint2).^2).^(0.5);
%         f1=find(D<(j) & D>=(j-1));
%         E=[];
%         E(:,1)=B(f1,1);
%         E(:,2)=B(f1,2);
%         e=sub2ind(size(A),E(:,1),E(:,2)); 
%         F=A(e);
%         m=mean(F);
%         G(j,1)=j;
%         G(j,2)=m;
%         G(j,3)=i;
%     end
%      avoverlap=vertcat(avoverlap,G);
% end
% overlapfunction=zeros(30,2);
% for j=1:1:30
%     f2=find(avoverlap(:,1)==j);
%     values=avoverlap(f2,2);
%     m=mean(values);
%     overlapfunction(j,1)=j;
%     overlapfunction(j,2)=m;
% end
% clear N N2
% filename='D:\Newdataanalysis\point2boxes\W4-overlapfunctionwithR.mat';