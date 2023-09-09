for ii=1:1:9
    clearvars -except ii
    load(strcat('E:\Wall-Data Analysis\W2\W2-wallshiftedinterface',num2str(ii),'-skip33.mat'));
    FinalCoordinates=[];
    N2=N2(:,14:54,:);
    parfor i=1:1:(n-(2*t))
            A=N2(:,:,i);
            %scan the whole m meaning x for the interface
            %now to define the interface
            f=find(A<=0.67 & A>=0.15);
            B=[];
            [B(:,1),B(:,2)]=ind2sub(size(A),f);
            coordinates=zeros(45,3);
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
%      addon2=((0)*sigmas);
%     elseif ii==2
%         addon1=((0.1)*sigmas);
%         addon2=((0)*sigmas);
%     elseif ii==3
%         addon1=((0)*sigmas);
%         addon2=((0.1)*sigmas);
%     elseif ii==4
%         addon1=((-0.1)*sigmas);
%         addon2=((0)*sigmas);
%     elseif ii==5
%         addon1=((0)*sigmas);
%         addon2=((-0.1)*sigmas);
%     end
%     if ii==6
%        addon1=(((0.1)*sigmas)*cos(pi/4));
%        addon2=(((0.1)*sigmas)*sin(pi/4));
%     elseif ii==7
%          addon1=-(((0.1)*sigmas)*cos(pi/4));
%          addon2=(((0.1)*sigmas)*sin(pi/4));
%     elseif ii==8
%          addon1=-(((0.1)*sigmas)*cos(pi/4));
%          addon2=-(((0.1)*sigmas)*sin(pi/4));
%     elseif ii==9
%          addon1=(((0.1)*sigmas)*cos(pi/4));
%          addon2=-(((0.1)*sigmas)*sin(pi/4));
%     end
    FinalCoordinates(:,4)=FinalCoordinates(:,1)*21.7;
    FinalCoordinates(:,5)=FinalCoordinates(:,2)*21.7;
    filename=(strcat('E:\Wall-Data Analysis\W2\FinalCoordinates_shiftedinterface',num2str(ii),'-skip33.mat'));
    save(filename,'FinalCoordinates');
end
