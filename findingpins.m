%to make the central box of dimension 1sigmas and the surroundings
% to be of 0.25sigmas to make it statistically countable
% close all
% load R vector(coordinates) and start
% PART-I -To find out the central box with 1sigmas cut off
% n=20034;
% noofimages=zeros(5,1);
load('E:\Shreyas-Dataanalysis\Analysis\Data-15\Data-15_part_track21.mat');
clearvars -except H
f=find(H(:,3)<=25000);
R=H(f,:);
sigmas=9.07;
x=1000;
y=1160;
n=max(R(:,3));
boxsiz=1;
for iii=1:1:1
    for ii=1:1:9
        clearvars -except R ii iii sigmas x y n boxsiz
        t=5133*iii;
        if ii==1
         addon1=((0)*sigmas);
         addon2=((0)*sigmas);
        elseif ii==2
            addon1=((0.1)*sigmas);
            addon2=((0)*sigmas);
        elseif ii==3
            addon1=((0)*sigmas);
            addon2=((0.1)*sigmas);
        elseif ii==4
            addon1=((-0.1)*sigmas);
            addon2=((0)*sigmas);
        elseif ii==5
            addon1=((0)*sigmas);
            addon2=((-0.1)*sigmas);
        end
        if ii==6
           addon1=(((0.1)*sigmas)*cos(pi/4));
           addon2=(((0.1)*sigmas)*sin(pi/4));
        elseif ii==7
             addon1=-(((0.1)*sigmas)*cos(pi/4));
             addon2=(((0.1)*sigmas)*sin(pi/4));
        elseif ii==8
             addon1=-(((0.1)*sigmas)*cos(pi/4));
             addon2=-(((0.1)*sigmas)*sin(pi/4));
        elseif ii==9
             addon1=(((0.1)*sigmas)*cos(pi/4));
             addon2=-(((0.1)*sigmas)*sin(pi/4));
        end  
        N=[];
        parfor i=1:1:n
            F=find(R(:,3)==i);
            N(:,:,i)=hist3(R(F,1:2),'Edges',{(((addon1)):((boxsiz)*sigmas):x) (((addon2)):((boxsiz)*sigmas):y)});
        end
    %     averaging to get the percentage occupancy
        H=find(N>1);
        N(H)=1;
        [h1,h2]=size(N(:,:,1));
        N2=[];
        parfor i=1:1:n-(2*t)
            N2(:,:,i)=mean((N(:,:,i:(i+t))).*(N(:,:,(i+t):(i+(2*t)))),3);
            N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
        end
        f=find(isnan(N2));
        N2(f)=0;
        F=find(N2>0.9);
        AA=[];
        [AA(:,1), AA(:,2), AA(:,3)]=ind2sub(size(N2),F);
        BB=unique(AA(:,1:2),'rows');
        for j=1:1:length(BB)
            F1=find(AA(:,1)==BB(j,1) & AA(:,2)==BB(j,2));
            CC(j,1:2)=BB(j,1:2);
            CC(j,3)=length(F1);
        end
        DD=sortrows(CC,3);
        filename=strcat('E:\Shreyas-Dataanalysis\Analysis\Data-15\Data-15',num2str(iii),num2str(ii),'-2.mat');
        save(filename,'-v7.3');
    end
end