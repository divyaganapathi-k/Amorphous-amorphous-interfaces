clearvars 
N3=zeros(144,116,11790);
for j1=1:1:9
%     filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas1',num2str(j1),'.mat');
%     filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(j1),'.mat');
    filename=strcat('D:\Final Data\1ta-data analysis\W5\W5final-shiftedinterfaceta1',num2str(j1),'.mat');
    load(filename);
    N2=N2(:,1:116,:);
    clear N R
    N3=N3+N2;
end
N3=N3/9;
N3=N3(:,1:88,:);
clear N2

NN=N3.*N3;
meanvalue=mean(NN,3);
xcor=zeros(10000,2);
for i=1:1:10000
    N2=N3;
    N4=circshift(N3,[0 0 -i]);
    N2=bsxfun(@minus,N2,NN);
    N4=bsxfun(@minus,N4,NN);
    N5=N2.*N4;
    N6=N2.*N2;
    [a1,a2,a3]=size(N5);
    N5=N5(:,:,1:(a3-i));
    N6=N6(:,:,1:(a3-i));
    num=sum(sum(sum(N5)));
    den=sum(sum(sum(N6)));
    value=num/den;
    xcor(i,1)=i;
    xcor(i,2)=value;
    clear N5 N4 N6
end
filename=('D:\Newdataanalysis\xcor\W51.mat');
save(filename,'xcor');

clearvars 
N3=zeros(144,116,3030);
for j1=1:1:9
%     filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas1',num2str(j1),'.mat');
    filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(j1),'.mat');
%     filename=strcat('D:\Final Data\1ta-data analysis\W4\W4final-shiftedinterfaceta1',num2str(j1),'.mat');
    load(filename);
    N2=N2(:,1:116,:);
    clear N R
    N3=N3+N2;
end
N3=N3/9;
N3=N3(:,1:88,:);
clear N2

NN=N3.*N3;
meanvalue=mean(NN,3);
xcor=zeros(3000,2);
for i=1:1:3000
    N2=N3;
    N4=circshift(N3,[0 0 -i]);
    N2=bsxfun(@minus,N2,NN);
    N4=bsxfun(@minus,N4,NN);
    N5=N2.*N4;
    N6=N2.*N2;
    [a1,a2,a3]=size(N5);
    N5=N5(:,:,1:(a3-i));
    N6=N6(:,:,1:(a3-i));
    num=sum(sum(sum(N5)));
    den=sum(sum(sum(N6)));
    value=num/den;
    xcor(i,1)=i;
    xcor(i,2)=value;
    clear N5 N4 N6
end
filename=('D:\Newdataanalysis\xcor\W21.mat');
save(filename,'xcor');

clearvars 
N3=zeros(144,116,8130);
for j1=1:1:9
%     filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas1',num2str(j1),'.mat');
%     filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(j1),'.mat');
    filename=strcat('D:\Final Data\1ta-data analysis\W7\W7final-shiftedinterfaceta1',num2str(j1),'.mat');
    load(filename);
    N2=N2(:,1:116,:);
    clear N R
    N3=N3+N2;
end
N3=N3/9;
N3=N3(:,1:88,:);
clear N2

NN=N3.*N3;
meanvalue=mean(NN,3);
xcor=zeros(8000,2);
for i=1:1:8000
    N2=N3;
    N4=circshift(N3,[0 0 -i]);
    N2=bsxfun(@minus,N2,NN);
    N4=bsxfun(@minus,N4,NN);
    N5=N2.*N4;
    N6=N2.*N2;
    [a1,a2,a3]=size(N5);
    N5=N5(:,:,1:(a3-i));
    N6=N6(:,:,1:(a3-i));
    num=sum(sum(sum(N5)));
    den=sum(sum(sum(N6)));
    value=num/den;
    xcor(i,1)=i;
    xcor(i,2)=value;
    clear N5 N4 N6
end
filename=('D:\Newdataanalysis\xcor\W71.mat');
save(filename,'xcor');

clearvars 
N3=zeros(144,116,9875);
for j1=1:1:9
%     filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas1',num2str(j1),'.mat');
%     filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(j1),'.mat');
    filename=strcat('D:\Final Data\1ta-data analysis\W3\W3final-shiftedinterfaceta1',num2str(j1),'.mat');
    load(filename);
    N2=N2(:,1:116,:);
    clear N R
    N3=N3+N2;
end
N3=N3/9;
N3=N3(:,1:88,:);
clear N2

NN=N3.*N3;
meanvalue=mean(NN,3);
xcor=zeros(9000,2);
for i=1:1:9000
    N2=N3;
    N4=circshift(N3,[0 0 -i]);
    N2=bsxfun(@minus,N2,NN);
    N4=bsxfun(@minus,N4,NN);
    N5=N2.*N4;
    N6=N2.*N2;
    [a1,a2,a3]=size(N5);
    N5=N5(:,:,1:(a3-i));
    N6=N6(:,:,1:(a3-i));
    num=sum(sum(sum(N5)));
    den=sum(sum(sum(N6)));
    value=num/den;
    xcor(i,1)=i;
    xcor(i,2)=value;
    clear N5 N4 N6
end
filename=('D:\Newdataanalysis\xcor\W31.mat');
save(filename,'xcor');

clearvars 
N3=zeros(144,116,13984);
for j1=1:1:9
%     filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas1',num2str(j1),'.mat');
%     filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(j1),'.mat');
    filename=strcat('D:\Final Data\1ta-data analysis\W8\W8final-shiftedinterfaceta1',num2str(j1),'.mat');
    load(filename);
    N2=N2(:,1:116,:);
    clear N R
    N3=N3+N2;
end
N3=N3/9;
N3=N3(:,1:88,:);
clear N2

NN=N3.*N3;
meanvalue=mean(NN,3);
xcor=zeros(13000,2);
for i=1:1:13000
    N2=N3;
    N4=circshift(N3,[0 0 -i]);
    N2=bsxfun(@minus,N2,NN);
    N4=bsxfun(@minus,N4,NN);
    N5=N2.*N4;
    N6=N2.*N2;
    [a1,a2,a3]=size(N5);
    N5=N5(:,:,1:(a3-i));
    N6=N6(:,:,1:(a3-i));
    num=sum(sum(sum(N5)));
    den=sum(sum(sum(N6)));
    value=num/den;
    xcor(i,1)=i;
    xcor(i,2)=value;
    clear N5 N4 N6
end
filename=('D:\Newdataanalysis\xcor\W81.mat');
save(filename,'xcor');