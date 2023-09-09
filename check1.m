average=zeros(20,2);
for i=1:1:20
    load(strcat('D:\Newdataanalysis\avstaticlengthscale\W5\W5staticlen',num2str(i),'-32-10-2.mat'));
    average(i,1)=i;
    average(i,2)=mean(overlapfunction(20:27,12));
end