% clearvars
% m1=58;
% m2=17;
% S=zeros(36,20);
% S1=zeros(36,20);
% for i=1:1:20
%     filename=strcat('D:\Newdataanalysis\sumoverlapfunction\W5\W5-',num2str(m1),'-',num2str(m2),'-',num2str(i),'-3.mat');
%     load(filename);
%     S(:,i)=std(overlap(:,[2 4 5 8 9]),0,2);
%     S1(:,i)=mean(overlap(:,[2 4 5 8 9]),2);
% end
clearvars
m1=59;
m2=16;
S1=zeros(36,20);
d=zeros(40,2);
for i=1:1:40
    filename=strcat('D:\Newdataanalysis\avdynamiclengthscale\W4\W4dynamiclen',num2str(i),'-',num2str(m1),'-',num2str(m2),'.mat');
    load(filename);
%     S(:,i)=std(overlapfunction(:,2:9),0,2);
%     S1(:,i)=mean(overlapfunction(:,[2 4 5 6 7 8]),2);
    S1(:,i)=overlapfunction(:,12);
    d(i,1)=i;
    d(i,2)=S1(7,i);
end