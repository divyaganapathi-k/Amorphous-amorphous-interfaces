%W2
% load('C:\Users\Divya\Desktop\codes\Data-Analysed\W2tawalldata-shiftedinterface11.mat');
% clear N2
for ii=4:1:4
    for i=9:1:9
        t=i*(10^(ii-1));
        try
        N2=[];
        parfor j=1:1:2000
             N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
             N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
        end
        filename=strcat('D:\Newdataanalysis\W2tawalldata-qinfinity',num2str(t),'.mat');
        save(filename,'N2');
        catch
        warning('Index exceeds matrix dimensions.');
        break
        end
    end
end

% for i=1:1:8
%     t=i*(1000);
%     N2=[];
%     parfor j=1:1:2000
%          N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
%          N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
%     end
%      filename=strcat('D:\Newdataanalysis\W2tawalldata-qinfinity',num2str(t),'.mat');
%      save(filename,'N2');
% end

clearvars
%W4
load('C:\Users\Divya\Desktop\codes\Data-Analysed\W4tawalldata-shiftedinterface11.mat');
clear N2
for ii=1:1:4
    for i=1:1:9
        t=i*(10^(ii-1));
        N2=[];
        parfor j=1:1:2000
             N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
             N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
        end
%          filename=strcat('D:\Newdataanalysis\W4tawalldata-qinfinity',num2str(t),'.mat');
%          save(filename,'N2');
    end
end

% for i=1:1:8
%     t=i*(1000);
%     N2=[];
%     parfor j=1:1:2000
%          N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
%          N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
%     end
%      filename=strcat('D:\Newdataanalysis\W4tawalldata-qinfinity',num2str(t),'.mat');
%      save(filename,'N2');
% end

clearvars
%W5
load('C:\Users\Divya\Desktop\codes\Data-Analysed\W5tawalldata-shiftedinterface11.mat');
clear N2
for ii=1:1:4
    for i=1:1:9
        t=i*(10^(ii-1));
        N2=[];
        parfor j=1:1:2400
             N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
             N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
        end
         filename=strcat('D:\Newdataanalysis\W5tawalldata-qinfinity',num2str(t),'.mat');
         save(filename,'N2');
    end
end

% for i=1:1:8
%     t=i*(1000);
%     N2=[];
%     parfor j=1:1:2400
%          N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
%          N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
%     end
%      filename=strcat('D:\Newdataanalysis\W5tawalldata-qinfinity',num2str(t),'.mat');
%      save(filename,'N2');
% end

clearvars
%W7
load('C:\Users\Divya\Desktop\codes\Data-Analysed\W7tawalldata-shiftedinterface11.mat');
clear N2
for ii=1:1:4
    for i=1:1:9
        t=i*(10^(ii-1));
        N2=[];
        parfor j=1:1:3000
             N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
             N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
        end
         filename=strcat('D:\Newdataanalysis\W7tawalldata-qinfinity',num2str(t),'.mat');
         save(filename,'N2');
    end
end

% for i=1:1:5
%     t=i*(1000);
%     N2=[];
%     parfor j=1:1:3000
%          N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
%          N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
%     end
%      filename=strcat('D:\Newdataanalysis\W7tawalldata-qinfinity',num2str(t),'.mat');
%      save(filename,'N2');
% end

clearvars
%W8
load('C:\Users\Divya\Desktop\codes\Data-Analysed\W8tawalldata-shiftedinterface11.mat');
clear N2
for ii=1:1:3
    for i=1:1:9
        t=i*(10^(ii-1));
        N2=[];
        parfor j=1:1:3000
             N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
             N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
        end
         filename=strcat('D:\Newdataanalysis\W8tawalldata-qinfinity',num2str(t),'.mat');
         save(filename,'N2');
    end
end

% for i=1:1:5
%     t=i*(1000);
%     N2=[];
%     parfor j=1:1:3000
%          N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
%          N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
%     end
%      filename=strcat('D:\Newdataanalysis\W8tawalldata-qinfinity',num2str(t),'.mat');
%      save(filename,'N2');
% end

%now for the unpinned system
clearvars
%W4
load('F:\Final Data\1ta-data analysis\W4\W4final-shiftedinterfaceta11.mat');
clear N2
for ii=1:1:4
    for i=1:1:9
        t=i*(10^(ii-1));
        N2=[];
        parfor j=1:1:2400
             N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
             N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
        end
         filename=strcat('D:\Newdataanalysis\W4taunpinned-qinfinity',num2str(t),'.mat');
         save(filename,'N2');
    end
end

% for i=1:1:4
%     t=i*(1000);
%     N2=[];
%     parfor j=1:1:2400
%          N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
%          N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
%     end
%      filename=strcat('D:\Newdataanalysis\W4taunpinned-qinfinity',num2str(t),'.mat');
%      save(filename,'N2');
% end

clearvars
%W5
load('F:\Final Data\1ta-data analysis\W5\W5final-shiftedinterfaceta11.mat');
clear N2
for ii=1:1:4
    for i=1:1:9
        t=i*(10^(ii-1));
        N2=[];
        parfor j=1:1:2400
             N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
             N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
        end
         filename=strcat('D:\Newdataanalysis\W5taunpinned-qinfinity',num2str(t),'.mat');
         save(filename,'N2');
    end
end

% for i=1:1:4
%     t=i*(1000);
%     N2=[];
%     parfor j=1:1:2400
%          N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
%          N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
%     end
%      filename=strcat('D:\Newdataanalysis\W5taunpinned-qinfinity',num2str(t),'.mat');
%      save(filename,'N2');
% end

clearvars
%W7
load('F:\Final Data\1ta-data analysis\W7\W7final-shiftedinterfaceta11.mat');
clear N2
for ii=1:1:4
    for i=1:1:9
        t=i*(10^(ii-1));
        N2=[];
        parfor j=1:1:3000
             N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
             N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
        end
         filename=strcat('D:\Newdataanalysis\W7taunpinned-qinfinity',num2str(t),'.mat');
         save(filename,'N2');
    end
end

% for i=1:1:2
%     t=i*(1000);
%     N2=[];
%     parfor j=1:1:3000
%          N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
%          N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
%     end
%      filename=strcat('D:\Newdataanalysis\W7taunpinned-qinfinity',num2str(t),'.mat');
%      save(filename,'N2');
% end

clearvars
%W8
load('F:\Final Data\1ta-data analysis\W8\W8final-shiftedinterfaceta11.mat');
clear N2
for ii=1:1:4
    for i=1:1:9
        t=i*(10^(ii-1));
        N2=[];
        parfor j=1:1:3000
             N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
             N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
        end
         filename=strcat('D:\Newdataanalysis\W8taunpinned-qinfinity',num2str(t),'.mat');
         save(filename,'N2');
    end
end

% for i=1:1:4
%     t=i*(1000);
%     N2=[];
%     parfor j=1:1:3000
%          N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
%          N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
%     end
%      filename=strcat('D:\Newdataanalysis\W8taunpinned-qinfinity',num2str(t),'.mat');
%      save(filename,'N2');
% end

clearvars
%W2
load('F:\Final Data\tstar-data analysis\W2\W2final-shiftedinterface11.mat');
clear N2
for ii=1:1:4
    for i=1:1:9
        t=i*(10^(ii-1));
        N2=[];
        parfor j=1:1:3000
             N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
             N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
        end
         filename=strcat('D:\Newdataanalysis\W2taunpinned-qinfinity',num2str(t),'.mat');
         save(filename,'N2');
    end
end

% for i=1:1:5
%     t=i*(1000);
%     N2=[];
%     parfor j=1:1:3000
%          N2(:,:,j)=mean((N(:,:,j:(j+t))).*(N(:,:,(j+t):(j+(2*t)))),3);
%          N2(:,:,j)=((N2(:,:,j))./(mean(N(:,:,j:(j+t)),3)));
%     end
%      filename=strcat('D:\Newdataanalysis\W2taunpinned-qinfinity',num2str(t),'.mat');
%      save(filename,'N2');
% end