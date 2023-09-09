%W2
for iii=1:1:1
    for ii=1:1:9
        clearvars -except iii ii
        filename=strcat('C:\Users\Divya\Desktop\codes\Data-Analysed\W2tawalldata-shiftedinterface',num2str(iii),num2str(ii),'.mat');
        load(filename);
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
            coordinates=zeros(m1,3);
            for j=1:1:m1
                f=find(B(:,1)==j);
                C=B(f,1:2);
                c1=min(C(:,2));
                coordinates(j,1)=j;
                if isempty(c1)==0
                    coordinates(j,2)=c1;
                else
                    coordinates(j,2)=0;
                end
                coordinates(j,3)=i;
            end
            FinalCoordinates=vertcat(FinalCoordinates,coordinates);
        end
        filename=strcat('D:\Newdataanalysis\Finalcoordinateswallfromwall\W2tawalldata-FinalCoordinates',num2str(ii),'.mat');
        save(filename,'FinalCoordinates');
    end
end

%W4
for iii=1:1:1
    for ii=1:1:9
        clearvars -except iii ii
        filename=strcat('C:\Users\Divya\Desktop\codes\Data-Analysed\W4tawalldata-shiftedinterface',num2str(iii),num2str(ii),'.mat');
        load(filename);
        N2=N2(:,23:107,:);
        [m1,m2,m3]=size(N2);
        FinalCoordinates=[];
        for i=1:1:n-(2*t)
            A=N2(:,:,i);
            %scan the whole m meaning x for the interface
            %now to define the interface
            f=find(A<=0.25 & A>=0.11157);
            B=[];
            [B(:,1),B(:,2)]=ind2sub(size(A),f);
            coordinates=zeros(m1,3);
            for j=1:1:m1
                f=find(B(:,1)==j);
                C=B(f,1:2);
                c1=min(C(:,2));
                coordinates(j,1)=j;
                if isempty(c1)==0
                    coordinates(j,2)=c1;
                else
                    coordinates(j,2)=0;
                end
                coordinates(j,3)=i;
            end
            FinalCoordinates=vertcat(FinalCoordinates,coordinates);
        end
        filename=strcat('D:\Newdataanalysis\Finalcoordinateswallfromwall\W4tawalldata-FinalCoordinates',num2str(ii),'.mat');
        save(filename,'FinalCoordinates');
    end
end

%W5
for iii=1:1:1
    for ii=1:1:9
        clearvars -except iii ii
        filename=strcat('C:\Users\Divya\Desktop\codes\Data-Analysed\W5tawalldata-shiftedinterface',num2str(iii),num2str(ii),'.mat');
        load(filename);
        N2=N2(:,23:107,:);
        [m1,m2,m3]=size(N2);
        FinalCoordinates=[];
        for i=1:1:n-(2*t)
            A=N2(:,:,i);
            %scan the whole m meaning x for the interface
            %now to define the interface
            f=find(A<=0.25 & A>=0.09206);
            B=[];
            [B(:,1),B(:,2)]=ind2sub(size(A),f);
            coordinates=zeros(m1,3);
            for j=1:1:m1
                f=find(B(:,1)==j);
                C=B(f,1:2);
                c1=min(C(:,2));
                coordinates(j,1)=j;
                if isempty(c1)==0
                    coordinates(j,2)=c1;
                else
                    coordinates(j,2)=0;
                end
                coordinates(j,3)=i;
            end
            FinalCoordinates=vertcat(FinalCoordinates,coordinates);
        end
        filename=strcat('D:\Newdataanalysis\Finalcoordinateswallfromwall\W5tawalldata-FinalCoordinates',num2str(ii),'.mat');     
        save(filename,'FinalCoordinates');
    end
end

%W7
for iii=1:1:1
    for ii=1:1:9
        clearvars -except iii ii
        filename=strcat('C:\Users\Divya\Desktop\codes\Data-Analysed\W7tawalldata-shiftedinterface',num2str(iii),num2str(ii),'.mat');
        load(filename);
        N2=N2(:,23:107,:);
        [m1,m2,m3]=size(N2);
        FinalCoordinates=[];
        for i=1:1:n-(2*t)
            A=N2(:,:,i);
            %scan the whole m meaning x for the interface
            %now to define the interface
            f=find(A<=0.25 & A>=0.09187);
            B=[];
            [B(:,1),B(:,2)]=ind2sub(size(A),f);
            coordinates=zeros(m1,3);
            for j=1:1:m1
                f=find(B(:,1)==j);
                C=B(f,1:2);
                c1=min(C(:,2));
                coordinates(j,1)=j;
                if isempty(c1)==0
                    coordinates(j,2)=c1;
                else
                    coordinates(j,2)=0;
                end
                coordinates(j,3)=i;
            end
            FinalCoordinates=vertcat(FinalCoordinates,coordinates);
        end
        filename=strcat('D:\Newdataanalysis\Finalcoordinateswallfromwall\W7tawalldata-FinalCoordinates',num2str(ii),'.mat');
        save(filename,'FinalCoordinates');
    end
end

%W8
for iii=1:1:1
    for ii=1:1:9
        clearvars -except iii ii
        filename=strcat('C:\Users\Divya\Desktop\codes\Data-Analysed\W8tawalldata-shiftedinterface',num2str(iii),num2str(ii),'.mat');
        load(filename);
        staticlength=(5.47398)*sigmas;
        N2=N2(:,23:107,:);
        [m1,m2,m3]=size(N2);
        FinalCoordinates=[];
        for i=1:1:n-(2*t)
            A=N2(:,:,i);
            %scan the whole m meaning x for the interface
            %now to define the interface
            f=find(A<=0.25 & A>=0.12253);
            B=[];
            [B(:,1),B(:,2)]=ind2sub(size(A),f);
            coordinates=zeros(m1,3);
            for j=1:1:m1
                f=find(B(:,1)==j);
                C=B(f,1:2);
                c1=min(C(:,2));
                coordinates(j,1)=j;
                if isempty(c1)==0
                    coordinates(j,2)=c1;
                else
                    coordinates(j,2)=0;
                end
                coordinates(j,3)=i;
            end
            FinalCoordinates=vertcat(FinalCoordinates,coordinates);
        end
        filename=strcat('D:\Newdataanalysis\Finalcoordinateswallfromwall\W8tawalldata-FinalCoordinates',num2str(ii),'.mat');
        save(filename,'FinalCoordinates');
    end
end