clearvars
m1=48;
m2=9;
averagevalue=zeros(20,2);
for i=1:1:20
    filename=strcat('D:\Newdataanalysis\avdynamiclengthscale\W3\W3dynamiclen',num2str(i),'-',num2str(m1),'-',num2str(m2),'-2.mat');
%     filename=strcat('D:\Newdataanalysis\avstaticlengthscale\W3\W3staticlen',num2str(i),'-',num2str(m1),'-',num2str(m2),'-2.mat');
    load(filename);
    averagevalue(i,1)=i;
    averagevalue(i,2)=overlapfunction(10,12);
%     averagevalue(i,2)=mean(overlapfunction(20:28,12));
end