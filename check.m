clearvars
m1=42;
m2=14;
for i=1:1:20
%     filename=strcat('D:\Newdataanalysis\avstaticlengthscale\W4\W4staticlen',num2str(i),'-',num2str(m1),'-',num2str(m2),'-2.mat');
    filename=strcat('D:\Newdataanalysis\avstaticlengthscale\W4\W2staticlen',num2str(i),'-',num2str(m1),'-',num2str(m2),'-2.mat');
    load(filename);
    filename=strcat('D:\Newdataanalysis\avstaticlengthscale\W4\W4staticlen',num2str(i),'-',num2str(m1),'-',num2str(m2),'-2.mat');
    save(filename,'overlapfunction');
end