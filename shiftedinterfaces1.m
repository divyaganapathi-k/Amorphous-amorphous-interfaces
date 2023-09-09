%to make the central box of dimension 1sigmas and the surroundings
% to be of 0.25sigmas to make it statistically countable
% close all
% load R vector(coordinates) and start
% PART-I -To find out the central box with 1sigmas cut off
% % n=12030;
% noofimages=zeros(5,1);
sigmas=21.7;
x=1560;
y=1160;
n=max(R(:,4));
boxsiz=0.5;
% for iii=1:1:1
%     for ii=1:1:9
%         clearvars -except R ii iii sigmas x y n boxsiz
%         t=8*iii;
%         if ii==1
%          addon1=((0)*sigmas);
%          addon2=((0)*sigmas);
%         elseif ii==2
%             addon1=((0.1)*sigmas);
%             addon2=((0)*sigmas);
%         elseif ii==3
%             addon1=((0)*sigmas);
%             addon2=((0.1)*sigmas);
%         elseif ii==4
%             addon1=((-0.1)*sigmas);
%             addon2=((0)*sigmas);
%         elseif ii==5
%             addon1=((0)*sigmas);
%             addon2=((-0.1)*sigmas);
%         end
%         if ii==6
%            addon1=(((0.1)*sigmas)*cos(pi/4));
%            addon2=(((0.1)*sigmas)*sin(pi/4));
%         elseif ii==7
%              addon1=-(((0.1)*sigmas)*cos(pi/4));
%              addon2=(((0.1)*sigmas)*sin(pi/4));
%         elseif ii==8
%              addon1=-(((0.1)*sigmas)*cos(pi/4));
%              addon2=-(((0.1)*sigmas)*sin(pi/4));
%         elseif ii==9
%              addon1=(((0.1)*sigmas)*cos(pi/4));
%              addon2=-(((0.1)*sigmas)*sin(pi/4));
%         end  
%         N=[];
%         parfor i=1:1:n
%             F=find(R(:,4)==i);
%             N(:,:,i)=hist3(R(F,1:2),'Edges',{((600+(addon1)):((boxsiz)*sigmas):x) ((270+(addon2)):((boxsiz)*sigmas):y)});
%         end
%     %     averaging to get the percentage occupancy
%         H=find(N>1);
%         N(H)=1;
%         [h1,h2]=size(N(:,:,1));
%         N2=[];
%         parfor i=1:1:n-(2*t)
%             N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
%             N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
%         end
%         f=find(isnan(N2));
%         N2(f)=0;
        coordinates=[];
        for i=1:1:(n-(2*t))
            A=N2(:,:,i);
            A=A';
            [dim1,dim2]=size(A);
            C=zeros(dim2,5);
            for j=1:1:dim2
                f=find(A(:,j)<=0.2 & A(:,j)>0.084);
                a=min(f);
                b=isempty(a);
                if b==1
                    a=0;
                end
                C(j,1)=j; % xvalue
                C(j,2)=a; % yvalue
                C(j,3)=j*boxsiz*sigmas;
                C(j,4)=a*boxsiz*sigmas;
                C(j,5)=i;
            end
            coordinates=vertcat(coordinates,C);
        end
        filename=strcat('C:\Users\Divya\Desktop\codes\Data-Analysed\W5finaltraps-shiftedinterface',num2str(iii),num2str(ii),'.mat');
        save(filename);
%     end
% end