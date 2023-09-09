clearvars
overlapfunction=zeros(30,12);
overlapfunction(:,1)=1:1:30;
for jj=1:1:9
    clearvars -except jj overlapfunction
%     filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W7\W7finalwithnan-shiftedinterface1',num2str(jj),'.mat');
    filename=strcat('I:\Data-backup\Final Data\1ta-data analysis\W7\W7final-shiftedinterfaceta1',num2str(jj),'.mat');
    load(filename);
    m1=58;
    m2=24;
    b21=(2*m1)-1; b22=(2*m2)-1;
    avoverlap=[];
    f=find(AA(:,1)==m1 & AA(:,2)==m2);
    timecoordinates=AA(f,3);
    for i=1:1:length(f)
        A=N2(:,:,timecoordinates(i));
        f=find(A>=0);
        B=[];
        [B(:,1),B(:,2)]=ind2sub(size(A),f);
        C=B-0.5;
        D=((C(:,1)-b21).^2+(C(:,2)-b22).^2).^(0.5);
        G=[];
        for j=1:1:30
            f1=find(D<(j) & D>=(j-1));
            E=[];
            E(:,1)=B(f1,1);
            E(:,2)=B(f1,2);
            e=sub2ind(size(A),E(:,1),E(:,2)); 
            F=A(e);
            m=mean(F);
            G(j,1)=j;
            G(j,2)=m;
            G(j,3)=i;
        end
         avoverlap=vertcat(avoverlap,G);
    end
        for j=1:1:30
            f2=find(avoverlap(:,1)==j);
            values=avoverlap(f2,2);
            m=mean(values);
            overlapfunction(j,(jj+1))=m;
        end
end
overlapfunction(:,11)=sum(overlapfunction(:,2:10),2);
overlapfunction(:,12)=overlapfunction(:,11)/9;
clear N N2 R
filename=strcat('D:\Newdataanalysis\overlapfunctionwithR\point5boxes\W7\shiftedinterface-',num2str(m1),'-',num2str(m2),'.mat');
save(filename);

clearvars
overlapfunction=zeros(30,12);
overlapfunction(:,1)=1:1:30;
for jj=1:1:9
    clearvars -except jj overlapfunction
%     filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W7\W7finalwithnan-shiftedinterface1',num2str(jj),'.mat');
    filename=strcat('I:\Data-backup\Final Data\1ta-data analysis\W7\W7final-shiftedinterfaceta1',num2str(jj),'.mat');    
    load(filename);
    m1=53;
    m2=17;
    avoverlap=[];
    b21=(2*m1)-1; b22=(2*m2)-1;
    f=find(AA(:,1)==m1 & AA(:,2)==m2);
    timecoordinates=AA(f,3);
    for i=1:1:length(f)
        A=N2(:,:,timecoordinates(i));
        f=find(A>=0);
        B=[];
        [B(:,1),B(:,2)]=ind2sub(size(A),f);
        C=B-0.5;
        G=[];
        for j=1:1:30
            D=((C(:,1)-b21).^2+(C(:,2)-b22).^2).^(0.5);
            f1=find(D<(j) & D>=(j-1));
            E=[];
            E(:,1)=B(f1,1);
            E(:,2)=B(f1,2);
            e=sub2ind(size(A),E(:,1),E(:,2)); 
            F=A(e);
            m=mean(F);
            G(j,1)=j;
            G(j,2)=m;
            G(j,3)=i;
        end
         avoverlap=vertcat(avoverlap,G);
    end
        for j=1:1:30
            f2=find(avoverlap(:,1)==j);
            values=avoverlap(f2,2);
            m=mean(values);
            overlapfunction(j,(jj+1))=m;
        end
end
overlapfunction(:,11)=sum(overlapfunction(:,2:10),2);
overlapfunction(:,12)=overlapfunction(:,11)/9;
clear N N2 R
filename=strcat('D:\Newdataanalysis\overlapfunctionwithR\point5boxes\W7\shiftedinterface-',num2str(m1),'-',num2str(m2),'.mat');
save(filename);

clearvars
overlapfunction=zeros(30,12);
overlapfunction(:,1)=1:1:30;
for jj=1:1:9
    clearvars -except jj overlapfunction 
%     filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W7\W7finalwithnan-shiftedinterface1',num2str(jj),'.mat');
    filename=strcat('I:\Data-backup\Final Data\1ta-data analysis\W7\W7final-shiftedinterfaceta1',num2str(jj),'.mat');
    load(filename);
    m1=52;
    m2=28;
    avoverlap=[];
    b21=(2*m1)-1; b22=(2*m2)-1;
    f=find(AA(:,1)==m1 & AA(:,2)==m2);
    timecoordinates=AA(f,3);
    for i=1:1:length(f)
        A=N2(:,:,timecoordinates(i));
        f=find(A>=0);
        B=[];
        [B(:,1),B(:,2)]=ind2sub(size(A),f);
        C=B-0.5;
        G=[];
        for j=1:1:30
            D=((C(:,1)-b21).^2+(C(:,2)-b22).^2).^(0.5);
            f1=find(D<(j) & D>=(j-1));
            E=[];
            E(:,1)=B(f1,1);
            E(:,2)=B(f1,2);
            e=sub2ind(size(A),E(:,1),E(:,2)); 
            F=A(e);
            m=mean(F);
            G(j,1)=j;
            G(j,2)=m;
            G(j,3)=i;
        end
         avoverlap=vertcat(avoverlap,G);
    end
        for j=1:1:30
            f2=find(avoverlap(:,1)==j);
            values=avoverlap(f2,2);
            m=mean(values);
            overlapfunction(j,(jj+1))=m;
        end
end
overlapfunction(:,11)=sum(overlapfunction(:,2:10),2);
overlapfunction(:,12)=overlapfunction(:,11)/9;
clear N N2 R
filename=strcat('D:\Newdataanalysis\overlapfunctionwithR\point5boxes\W7\shiftedinterface-',num2str(m1),'-',num2str(m2),'.mat');
save(filename);

clearvars
overlapfunction=zeros(30,12);
overlapfunction(:,1)=1:1:30;
for jj=1:1:9
    clearvars -except jj overlapfunction 
%     filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W7\W7finalwithnan-shiftedinterface1',num2str(jj),'.mat');
    filename=strcat('I:\Data-backup\Final Data\1ta-data analysis\W7\W7final-shiftedinterfaceta1',num2str(jj),'.mat');
    load(filename);
    m1=48;
    m2=30;
    avoverlap=[];
    b21=(2*m1)-1; b22=(2*m2)-1;
    f=find(AA(:,1)==m1 & AA(:,2)==m2);
    timecoordinates=AA(f,3);
    for i=1:1:length(f)
        A=N2(:,:,timecoordinates(i));
        f=find(A>=0);
        B=[];
        [B(:,1),B(:,2)]=ind2sub(size(A),f);
        C=B-0.5;
        G=[];
        for j=1:1:30
            D=((C(:,1)-b21).^2+(C(:,2)-b22).^2).^(0.5);
            f1=find(D<(j) & D>=(j-1));
            E=[];
            E(:,1)=B(f1,1);
            E(:,2)=B(f1,2);
            e=sub2ind(size(A),E(:,1),E(:,2)); 
            F=A(e);
            m=mean(F);
            G(j,1)=j;
            G(j,2)=m;
            G(j,3)=i;
        end
         avoverlap=vertcat(avoverlap,G);
    end
        for j=1:1:30
            f2=find(avoverlap(:,1)==j);
            values=avoverlap(f2,2);
            m=mean(values);
            overlapfunction(j,(jj+1))=m;
        end
end
overlapfunction(:,11)=sum(overlapfunction(:,2:10),2);
overlapfunction(:,12)=overlapfunction(:,11)/9;
clear N N2 R
filename=strcat('D:\Newdataanalysis\overlapfunctionwithR\point5boxes\W7\shiftedinterface-',num2str(m1),'-',num2str(m2),'.mat');
save(filename);

clearvars
overlapfunction=zeros(30,12);
overlapfunction(:,1)=1:1:30;
for jj=1:1:9
    clearvars -except jj overlapfunction
%     filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W7\W7finalwithnan-shiftedinterface1',num2str(jj),'.mat');
    filename=strcat('I:\Data-backup\Final Data\1ta-data analysis\W7\W7final-shiftedinterfaceta1',num2str(jj),'.mat');
    load(filename);
    m1=45;
    m2=27;
    avoverlap=[];
    b21=(2*m1)-1; b22=(2*m2)-1;
    f=find(AA(:,1)==m1 & AA(:,2)==m2);
    timecoordinates=AA(f,3);
    for i=1:1:length(f)
        A=N2(:,:,timecoordinates(i));
        f=find(A>=0);
        B=[];
        [B(:,1),B(:,2)]=ind2sub(size(A),f);
        C=B-0.5;
        G=[];
        for j=1:1:30
            D=((C(:,1)-b21).^2+(C(:,2)-b22).^2).^(0.5);
            f1=find(D<(j) & D>=(j-1));
            E=[];
            E(:,1)=B(f1,1);
            E(:,2)=B(f1,2);
            e=sub2ind(size(A),E(:,1),E(:,2)); 
            F=A(e);
            m=mean(F);
            G(j,1)=j;
            G(j,2)=m;
            G(j,3)=i;
        end
         avoverlap=vertcat(avoverlap,G);
    end
        for j=1:1:30
            f2=find(avoverlap(:,1)==j);
            values=avoverlap(f2,2);
            m=mean(values);
            overlapfunction(j,(jj+1))=m;
        end
end
overlapfunction(:,11)=sum(overlapfunction(:,2:10),2);
overlapfunction(:,12)=overlapfunction(:,11)/9;
clear N N2 R
filename=strcat('D:\Newdataanalysis\overlapfunctionwithR\point5boxes\W7\shiftedinterface-',num2str(m1),'-',num2str(m2),'.mat');
save(filename);

clearvars
overlapfunction=zeros(30,12);
overlapfunction(:,1)=1:1:30;
for jj=1:1:9
    clearvars -except jj overlapfunction
%     filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W7\W7finalwithnan-shiftedinterface1',num2str(jj),'.mat');
    filename=strcat('I:\Data-backup\Final Data\1ta-data analysis\W7\W7final-shiftedinterfaceta1',num2str(jj),'.mat');
    load(filename);
    m1=45;
    m2=19;
    avoverlap=[];
    b21=(2*m1)-1; b22=(2*m2)-1;
    f=find(AA(:,1)==m1 & AA(:,2)==m2);
    timecoordinates=AA(f,3);
    for i=1:1:length(f)
        A=N2(:,:,timecoordinates(i));
        f=find(A>=0);
        B=[];
        [B(:,1),B(:,2)]=ind2sub(size(A),f);
        C=B-0.5;
        G=[];
        for j=1:1:30
            D=((C(:,1)-b21).^2+(C(:,2)-b22).^2).^(0.5);
            f1=find(D<(j) & D>=(j-1));
            E=[];
            E(:,1)=B(f1,1);
            E(:,2)=B(f1,2);
            e=sub2ind(size(A),E(:,1),E(:,2)); 
            F=A(e);
            m=mean(F);
            G(j,1)=j;
            G(j,2)=m;
            G(j,3)=i;
        end
         avoverlap=vertcat(avoverlap,G);
    end
        for j=1:1:30
            f2=find(avoverlap(:,1)==j);
            values=avoverlap(f2,2);
            m=mean(values);
            overlapfunction(j,(jj+1))=m;
        end
end
overlapfunction(:,11)=sum(overlapfunction(:,2:10),2);
overlapfunction(:,12)=overlapfunction(:,11)/9;
clear N N2 R
filename=strcat('D:\Newdataanalysis\overlapfunctionwithR\point5boxes\W7\shiftedinterface-',num2str(m1),'-',num2str(m2),'.mat');
save(filename);

clearvars
overlapfunction=zeros(30,12);
overlapfunction(:,1)=1:1:30;
for jj=1:1:9
    clearvars -except jj overlapfunction
%     filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W7\W7finalwithnan-shiftedinterface1',num2str(jj),'.mat');
    filename=strcat('I:\Data-backup\Final Data\1ta-data analysis\W7\W7final-shiftedinterfaceta1',num2str(jj),'.mat');
    load(filename);
    m1=40;
    m2=28;
    avoverlap=[];
    b21=(2*m1)-1; b22=(2*m2)-1;
    f=find(AA(:,1)==m1 & AA(:,2)==m2);
    timecoordinates=AA(f,3);
    for i=1:1:length(f)
        A=N2(:,:,timecoordinates(i));
        f=find(A>=0);
        B=[];
        [B(:,1),B(:,2)]=ind2sub(size(A),f);
        C=B-0.5;
        G=[];
        for j=1:1:30
            D=((C(:,1)-b21).^2+(C(:,2)-b22).^2).^(0.5);
            f1=find(D<(j) & D>=(j-1));
            E=[];
            E(:,1)=B(f1,1);
            E(:,2)=B(f1,2);
            e=sub2ind(size(A),E(:,1),E(:,2)); 
            F=A(e);
            m=mean(F);
            G(j,1)=j;
            G(j,2)=m;
            G(j,3)=i;
        end
         avoverlap=vertcat(avoverlap,G);
    end
        for j=1:1:30
            f2=find(avoverlap(:,1)==j);
            values=avoverlap(f2,2);
            m=mean(values);
            overlapfunction(j,(jj+1))=m;
        end
end
overlapfunction(:,11)=sum(overlapfunction(:,2:10),2);
overlapfunction(:,12)=overlapfunction(:,11)/9;
clear N N2 R
filename=strcat('D:\Newdataanalysis\overlapfunctionwithR\point5boxes\W7\shiftedinterface-',num2str(m1),'-',num2str(m2),'.mat');
save(filename);

% clearvars
% overlapfunction=zeros(30,12);
% overlapfunction(:,1)=1:1:30;
% for jj=1:1:9
%     clearvars -except jj overlapfunction
%     filename=strcat('D:\Newdataanalysis\Ak2-unpinned\W7\W7finalwithnan-shiftedinterface1',num2str(jj),'.mat');
%     load(filename);
%     f=find(isnan(N2)==1);
%     N2(f)=0;
%     m1=28;
%     m2=30;
%     avoverlap=[];
%     b21=(2*m1)-1; b22=(2*m2)-1;
%     f=find(AA(:,1)==m1 & AA(:,2)==m2);
%     timecoordinates=AA(f,3);
%     for i=1:1:length(f)
%         A=N2(:,:,timecoordinates(i));
%         f=find(A>=0);
%         B=[];
%         [B(:,1),B(:,2)]=ind2sub(size(A),f);
%         C=B-0.5;
%         G=[];
%         for j=1:1:30
%             D=((C(:,1)-b21).^2+(C(:,2)-b22).^2).^(0.5);
%             f1=find(D<(j) & D>=(j-1));
%             E=[];
%             E(:,1)=B(f1,1);
%             E(:,2)=B(f1,2);
%             e=sub2ind(size(A),E(:,1),E(:,2)); 
%             F=A(e);
%             m=mean(F);
%             G(j,1)=j;
%             G(j,2)=m;
%             G(j,3)=i;
%         end
%          avoverlap=vertcat(avoverlap,G);
%     end
%         for j=1:1:30
%             f2=find(avoverlap(:,1)==j);
%             values=avoverlap(f2,2);
%             m=mean(values);
%             overlapfunction(j,(jj+1))=m;
%         end
% end
% overlapfunction(:,11)=sum(overlapfunction(:,2:10),2);
% overlapfunction(:,12)=overlapfunction(:,11)/9;
% clear N N2 R
% filename=strcat('D:\Newdataanalysis\overlapfunctionwithR\point5boxes\W7\shiftedinterface-',num2str(m1),'-',num2str(m2),'.mat');
% save(filename);