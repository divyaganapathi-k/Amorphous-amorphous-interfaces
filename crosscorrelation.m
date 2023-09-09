% N3=zeros(144,116,8130);
% for j1=1:1:9
% %     filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas1',num2str(j1),'.mat');
% %     filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(j1),'.mat');
%     filename=strcat('D:\Final Data\1ta-data analysis\W7\W7final-shiftedinterfaceta1',num2str(j1),'.mat');
%     load(filename);
%     N2=N2(:,1:116,:);
%     clear N R
%     N3=N3+N2;
% end
% N3=N3/9;
% N3=N3(:,1:88,:);
% clear N2
% 
% xcor=zeros(7500,2);
% for i=1:1:7500
%     N4=circshift(N3,[0 0 -i]);
%     N5=N3.*N4;
%     N6=N3.*N3;
%     [a1,a2,a3]=size(N5);
%     N5=N5(:,:,1:(a3-i));
%     N6=N6(:,:,1:(a3-i));
%     num=mean(mean(mean(N5)));
%     den=mean(mean(mean(N6)));
%     value=num/den;
%     xcor(i,1)=i;
%     xcor(i,2)=value;
%     clear N5 N4 N6
% end
% filename=('D:\Newdataanalysis\xcor\W7.mat');
% save(filename,'xcor');
% 
% clearvars 
% N3=zeros(144,116,3507);
% for j1=1:1:9
% %     filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas1',num2str(j1),'.mat');
% %     filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(j1),'.mat');
%     filename=strcat('D:\Final Data\1ta-data analysis\W4\W4final-shiftedinterfaceta1',num2str(j1),'.mat');
%     load(filename);
%     N2=N2(:,1:116,:);
%     clear N R
%     N3=N3+N2;
% end
% N3=N3/9;
% N3=N3(:,1:88,:);
% clear N2
% 
% xcor=zeros(3000,2);
% for i=1:1:3000
%     N4=circshift(N3,[0 0 -i]);
%     N5=N3.*N4;
%     N6=N3.*N3;
%     [a1,a2,a3]=size(N5);
%     N5=N5(:,:,1:(a3-i));
%     N6=N6(:,:,1:(a3-i));
%     num=mean(mean(mean(N5)));
%     den=mean(mean(mean(N6)));
%     value=num/den;
%     xcor(i,1)=i;
%     xcor(i,2)=value;
%     clear N5 N4 N6
% end
% filename=('D:\Newdataanalysis\xcor\W4.mat');
% save(filename,'xcor');

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

xcor=zeros(10000,2);
for i=1:1:10000
    N4=circshift(N3,[0 0 -i]);
    N5=N3.*N4;
    N6=N3.*N3;
    [a1,a2,a3]=size(N5);
    N5=N5(:,:,1:(a3-i));
    N6=N6(:,:,1:(a3-i));
    num=mean(mean(mean(N5)));
    den=mean(mean(mean(N6)));
    value=num/den;
    xcor(i,1)=i;
    xcor(i,2)=value;
    clear N5 N4 N6
end
filename=('D:\Newdataanalysis\xcor\W5.mat');
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

xcor=zeros(9500,2);
for i=1:1:9500
    N4=circshift(N3,[0 0 -i]);
    N5=N3.*N4;
    N6=N3.*N3;
    [a1,a2,a3]=size(N5);
    N5=N5(:,:,1:(a3-i));
    N6=N6(:,:,1:(a3-i));
    num=mean(mean(mean(N5)));
    den=mean(mean(mean(N6)));
    value=num/den;
    xcor(i,1)=i;
    xcor(i,2)=value;
    clear N5 N4 N6
end
filename=('D:\Newdataanalysis\xcor\W3.mat');
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

xcor=zeros(13000,2);
for i=1:1:13000
    N4=circshift(N3,[0 0 -i]);
    N5=N3.*N4;
    N6=N3.*N3;
    [a1,a2,a3]=size(N5);
    N5=N5(:,:,1:(a3-i));
    N6=N6(:,:,1:(a3-i));
    num=mean(mean(mean(N5)));
    den=mean(mean(mean(N6)));
    value=num/den;
    xcor(i,1)=i;
    xcor(i,2)=value;
    clear N5 N4 N6
end
filename=('D:\Newdataanalysis\xcor\W8.mat');
save(filename,'xcor');