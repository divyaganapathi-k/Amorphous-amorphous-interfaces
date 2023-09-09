for ii=1:1:9
    clearvars -except ii
%     load(strcat('E:\Wall-Data Analysis\W4\W4wall-persistancesigmas1',num2str(ii),'.mat'));
    load(strcat('E:\Wall_RefreeAnalysis\W4\W4wall-persistancesigmas1',num2str(ii),'.mat'));
    FinalCoordinates=[];
    Np=Np(:,11:54,:);
    parfor i=1:1:(n-(2*t))
            A=Np(:,:,i);
            %scan the whole m meaning x for the interface
            %now to define the interface
            f=find(A<=0.67);
            B=[];
            [B(:,1),B(:,2)]=ind2sub(size(A),f);
            coordinates=zeros(72,3);
            for j=1:1:72
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
%     if ii==1
%      addon1=((0)*sigmas);
%      addoNp=((0)*sigmas);
%     elseif ii==2
%         addon1=((0.1)*sigmas);
%         addoNp=((0)*sigmas);
%     elseif ii==3
%         addon1=((0)*sigmas);
%         addoNp=((0.1)*sigmas);
%     elseif ii==4
%         addon1=((-0.1)*sigmas);
%         addoNp=((0)*sigmas);
%     elseif ii==5
%         addon1=((0)*sigmas);
%         addoNp=((-0.1)*sigmas);
%     end
%     if ii==6
%        addon1=(((0.1)*sigmas)*cos(pi/4));
%        addoNp=(((0.1)*sigmas)*sin(pi/4));
%     elseif ii==7
%          addon1=-(((0.1)*sigmas)*cos(pi/4));
%          addoNp=(((0.1)*sigmas)*sin(pi/4));
%     elseif ii==8
%          addon1=-(((0.1)*sigmas)*cos(pi/4));
%          addoNp=-(((0.1)*sigmas)*sin(pi/4));
%     elseif ii==9
%          addon1=(((0.1)*sigmas)*cos(pi/4));
%          addoNp=-(((0.1)*sigmas)*sin(pi/4));
%     end
    FinalCoordinates(:,4)=FinalCoordinates(:,1);
    FinalCoordinates(:,5)=FinalCoordinates(:,2);
    filename=(strcat('E:\Wall_RefreeAnalysis\W4\FinalCoordinates_shiftedinterface_persistent',num2str(ii),'.mat'));
    save(filename,'FinalCoordinates');
end
