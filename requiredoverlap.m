clearvars
value=zeros(20,2);
m1=28;
m2=35;
for i=1:1:40
    filename=strcat('D:\Newdataanalysis\avdynamiclengthscale\W4\W4dynamiclen-',num2str(i),'-',num2str(m1),'-',num2str(m2),'-2.mat');
%     filename=strcat('D:\Newdataanalysis\avdynamiclengthscale\W4-1\W4dynamiclen2166-',num2str(i),'-',num2str(m1),'-',num2str(m2),'-2.mat');
    load(filename);
    value(i,1)=i;
    value(i,2)=overlapfunction(2,12);
end
% % 
% clearvars
% value=zeros(20,2);
% m1=57;
% m2=28;
% for i=1:1:20
%     filename=strcat('D:\Newdataanalysis\avdynamiclengthscale\W4\W4dynamiclen',num2str(i),'-',num2str(m1),'-',num2str(m2),'-2.mat');
% %     filename=strcat('C:\Users\Divya\Desktop\analysis-refree report\dynamiclengthscale\W4-1\W4dynamiclen',num2str(i),'-',num2str(m1),'-',num2str(m2),'-2.mat');
%     load(filename);
%     value(i,1)=i;
%     value(i,2)=mean(overlapfunction(20:28,12));
% end