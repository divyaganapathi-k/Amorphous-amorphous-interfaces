%W2
for iii=1:1:1
    for ii=1:1:9
        clearvars -except iii ii
%         filename=strcat('C:\Users\Divya\Desktop\codes\Data-Analysed\W2tawalldata-shiftedinterface',num2str(iii),num2str(ii),'.mat');
        filename=strcat('D:\Newdataanalysis\W210tstar\W2-shiftedinterface10tstar',num2str(ii),'.mat');
        load(filename);
        staticlength=(5.47398)*sigmas;
        N2=N2(:,23:107,:);
        [m1,m2,m3]=size(N2);
        FinalCoordinates=[];
        for i=1:1:n-(2*t)
            A=N2(:,:,i);
            %scan the whole m meaning x for the interface
            %now to define the interface
            f=find(A<=0.25 & A>=0.11971);
            B=[];
            [B(:,1),B(:,2)]=ind2sub(size(A),f);
            B(:,3)=(((B(:,1)-0.5).^2+(B(:,2)-0.5).^2).^(0.5))-staticlength;
            coordinates=zeros(m1,3);
            for j=1:1:m1
                f=find(B(:,1)==j);
                C=B(f,1:3);
                [c1,c2]=min(C(:,3)); %c2 location of minimum in C
                coordinates(j,1)=j;
                if isempty(c2)==0
                    coordinates(j,2)=C(c2,2);
                else
                    coordinates(j,2)=0;
                end
                coordinates(j,3)=i;
            end
            FinalCoordinates=vertcat(FinalCoordinates,coordinates);
        end
%         filename=strcat('D:\Newdataanalysis\Finalcoordinateswall\W2tawalldata-FinalCoordinates',num2str(ii),'.mat');
        filename=strcat('D:\Newdataanalysis\W210tstar\W210tstar-FinalCoordinates',num2str(ii),'.mat');        
        save(filename,'FinalCoordinates');
    end
end

% %W7
% for iii=1:1:1
%     for ii=1:1:9
%         clearvars -except iii ii
%         filename=strcat('C:\Users\Divya\Desktop\codes\Data-Analysed\W7tawalldata-shiftedinterface',num2str(iii),num2str(ii),'.mat');
%         load(filename);
%         staticlength=(1.53313)*sigmas;
%         N2=N2(:,17:107,:);
%         [m1,m2,m3]=size(N2);
%         FinalCoordinates=[];
%         for i=1:1:n-(2*t)
%             A=N2(:,:,i);
%             %scan the whole m meaning x for the interface
%             %now to define the interface
%             f=find(A<=0.2 & A>=0.09187);
%             B=[];
%             [B(:,1),B(:,2)]=ind2sub(size(A),f);
%             B(:,3)=(((B(:,1)-0.5).^2+(B(:,2)-0.5).^2).^(0.5))-staticlength;
%             coordinates=zeros(m1,3);
%             for j=1:1:m1
%                 f=find(B(:,1)==j);
%                 C=B(f,1:3);
%                 [c1,c2]=min(C(:,3)); %c2 location of minimum in C
%                 coordinates(j,1)=j;
%                 if isempty(c2)==0
%                     coordinates(j,2)=C(c2,2);
%                 else
%                     coordinates(j,2)=0;
%                 end
%                 coordinates(j,3)=i;
%             end
%             FinalCoordinates=vertcat(FinalCoordinates,coordinates);
%         end
%         filename=strcat('D:\Newdataanalysis\Finalcoordinateswall\W7tawalldata-FinalCoordinates',num2str(ii),'.mat');
%         save(filename,'FinalCoordinates');
%     end
% end
% 
% %W5
% for iii=1:1:1
%     for ii=1:1:9
%         clearvars -except iii ii
%         filename=strcat('C:\Users\Divya\Desktop\codes\Data-Analysed\W5tawalldata-shiftedinterface',num2str(iii),num2str(ii),'.mat');
%         load(filename);
%         staticlength=(3.92773)*sigmas;
%         N2=N2(:,21:107,:);
%         [m1,m2,m3]=size(N2);
%         FinalCoordinates=[];
%         for i=1:1:n-(2*t)
%             A=N2(:,:,i);
%             %scan the whole m meaning x for the interface
%             %now to define the interface
%             f=find(A<=0.25 & A>=0.09206);
%             B=[];
%             [B(:,1),B(:,2)]=ind2sub(size(A),f);
%             B(:,3)=(((B(:,1)-0.5).^2+(B(:,2)-0.5).^2).^(0.5))-staticlength;
%             coordinates=zeros(m1,3);
%             for j=1:1:m1
%                 f=find(B(:,1)==j);
%                 C=B(f,1:3);
%                 [c1,c2]=min(C(:,3)); %c2 location of minimum in C
%                 coordinates(j,1)=j;
%                 if isempty(c2)==0
%                     coordinates(j,2)=C(c2,2);
%                 else
%                     coordinates(j,2)=0;
%                 end
%                 coordinates(j,3)=i;
%             end
%             FinalCoordinates=vertcat(FinalCoordinates,coordinates);
%         end
%         filename=strcat('D:\Newdataanalysis\Finalcoordinateswall\W5tawalldata-FinalCoordinates',num2str(ii),'.mat');
%         save(filename,'FinalCoordinates');
%     end
% end
% 
% %W8
% for iii=1:1:1
%     for ii=1:1:9
%         clearvars -except iii ii
%         filename=strcat('C:\Users\Divya\Desktop\codes\Data-Analysed\W8tawalldata-shiftedinterface',num2str(iii),num2str(ii),'.mat');
%         load(filename);
%         staticlength=(3.92773)*sigmas;
%         N2=N2(:,15:107,:);
%         [m1,m2,m3]=size(N2);
%         FinalCoordinates=[];
%         for i=1:1:n-(2*t)
%             A=N2(:,:,i);
%             %scan the whole m meaning x for the interface
%             %now to define the interface
%             f=find(A<=0.25 & A>=0.12253);
%             B=[];
%             [B(:,1),B(:,2)]=ind2sub(size(A),f);
%             B(:,3)=(((B(:,1)-0.5).^2+(B(:,2)-0.5).^2).^(0.5))-staticlength;
%             coordinates=zeros(m1,3);
%             for j=1:1:m1
%                 f=find(B(:,1)==j);
%                 C=B(f,1:3);
%                 [c1,c2]=min(C(:,3)); %c2 location of minimum in C
%                 coordinates(j,1)=j;
%                 if isempty(c2)==0
%                     coordinates(j,2)=C(c2,2);
%                 else
%                     coordinates(j,2)=0;
%                 end
%                 coordinates(j,3)=i;
%             end
%             FinalCoordinates=vertcat(FinalCoordinates,coordinates);
%         end
%         filename=strcat('D:\Newdataanalysis\Finalcoordinateswall\W8tawalldata-FinalCoordinates',num2str(ii),'.mat');
%         save(filename,'FinalCoordinates');
%     end
% end
% 
% %W4
% for iii=1:1:1
%     for ii=1:1:9
%         clearvars -except iii ii
%         filename=strcat('C:\Users\Divya\Desktop\codes\Data-Analysed\W4tawalldata-shiftedinterface',num2str(iii),num2str(ii),'.mat');
%         load(filename);
%         staticlength=(3.92773)*sigmas;
%         N2=N2(:,22:107,:);
%         [m1,m2,m3]=size(N2);
%         FinalCoordinates=[];
%         for i=1:1:n-(2*t)
%             A=N2(:,:,i);
%             %scan the whole m meaning x for the interface
%             %now to define the interface
%             f=find(A<=0.25 & A>=0.11157);
%             B=[];
%             [B(:,1),B(:,2)]=ind2sub(size(A),f);
%             B(:,3)=(((B(:,1)-0.5).^2+(B(:,2)-0.5).^2).^(0.5))-staticlength;
%             coordinates=zeros(m1,3);
%             for j=1:1:m1
%                 f=find(B(:,1)==j);
%                 C=B(f,1:3);
%                 [c1,c2]=min(C(:,3)); %c2 location of minimum in C
%                 coordinates(j,1)=j;
%                 if isempty(c2)==0
%                     coordinates(j,2)=C(c2,2);
%                 else
%                     coordinates(j,2)=0;
%                 end
%                 coordinates(j,3)=i;
%             end
%             FinalCoordinates=vertcat(FinalCoordinates,coordinates);
%         end
%         filename=strcat('D:\Newdataanalysis\Finalcoordinateswall\W4tawalldata-FinalCoordinates',num2str(ii),'.mat');
%         save(filename,'FinalCoordinates');
%     end
% end