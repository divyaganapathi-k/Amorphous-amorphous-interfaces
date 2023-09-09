clearvars
for ii=1:1:9
    filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas1',num2str(ii),'.mat');
    load(filename);
    clearvars -except R N N2 ii 
    t=2250;
    n=max(R(:,3));
    sigmas=21.7;
    boxsiz=1;
    H=find(N>1);
    N(H)=1;
    N1=parallel.pool.Constant(N);
    Np=[];
    parfor i=1:1:(n-(2*t))
        Np(:,:,i)=mean(not(xor((N1.Value(:,:,i:(i+t))),(N1.Value(:,:,(i+t):(i+(2*t)))))),3); %#ok<PFBNS>
    end
    F=find(Np>0.9);
    AA=[];
    [AA(:,1), AA(:,2), AA(:,3)]=ind2sub(size(Np),F);
    BB=unique(AA(:,1:2),'rows');
    CC=zeros(length(BB),3);
    for j=1:1:length(BB)
        F1=find(AA(:,1)==BB(j,1) & AA(:,2)==BB(j,2));
        CC(j,1:2)=BB(j,1:2);
        CC(j,3)=length(F1);
    end
    DD=sortrows(CC,3);
%     filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-persistancesigmas1',num2str(ii),'.mat');
%     save(filename,'-v7.3');
%     [h1,h2]=size(N2(:,:,1));
%     sz=h1*h2;
%     c=zeros(n-(2*t),1);
%     for i=1:1:n-(2*t)
%         A=N2(:,:,i);
%         f1=find(isnan(A)==1);
%         A(f1)=0;
%         f=find(A<=0.15);
%         A(f)=1-A(f);
%         B=Np(:,:,i);
%         A1=reshape(A,[sz,1]);
%         B1=reshape(B,[sz,1]);
%     %     c=abs(A1-B1);
%     %     c=1-c;
%        c(i,:)=corr2(A1,B1);
%     end
%     clearvars N2 N1 N
    filename=strcat('D:\Newdataanalysis\1boxes\W2\W2unpinned-persistance_3tstar_sigmas1',num2str(ii),'.mat');
    save(filename,'-v7.3');
end