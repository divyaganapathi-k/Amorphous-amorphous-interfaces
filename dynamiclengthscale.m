clearvars
R=load('D:\Raw Data\W2_0T_1-13500_trk(16,0,10)_DD(100).txt');
f=find(R(:,1)>=0 & R(:,2)>=0);
R=R(f,1:4);
n=max(R(:,3));
sigmas=21.7;
for ii=1:1:9
    clearvars -except R ii sigmas n
    filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(ii),'.mat');
    load(filename,'N');
    for k2=1:1:4
        for k1=5:1:9
            k1
            clearvars -except R ii sigmas n k1 k2 N
            t=k1*(10^(k2-1));
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
            Referencematrix=zeros(length(R(:,1)),4);
            RR=zeros(length(R(:,1)),2);
            RR(:,1)=R(:,1)-addon1;
            RR(:,2)=R(:,2)-addon2;
            Referencematrix(:,1)=fix(RR(:,1)/((0.5)*sigmas))+1;  
            Referencematrix(:,2)=fix(RR(:,2)/((0.5)*sigmas))+1;
            Referencematrix(:,3:4)=R(:,3:4);
            one_boxes=[];
            try
                parfor i=1:1:(n-t)
                    f1=find(Referencematrix(:,3)==i);
                    f2=find(Referencematrix(:,3)==(t+i));
                    A=Referencematrix(f1,[1 2 4]);
                    B=Referencematrix(f2,[1 2 4]);
                    I=intersect(A,B,'rows');
                    J=[];
                    J(:,1)=i*ones(length(I(:,1)),1);
                    IJ=horzcat(I,J);
                    one_boxes=vertcat(one_boxes,IJ);
                end
                % one boxes contains the row and column number of boxes which are the
                % ones in Ns
                [p,q,r]=size(N);
                Ns=zeros(p,q,(n-t));
                f=sub2ind(size(Ns),one_boxes(:,1),one_boxes(:,2),one_boxes(:,4));
                Ns(f)=1;
                N2=zeros(p,q,(n-(2*t)));
                parfor i=1:1:(n-(2*t))
                    N2(:,:,i)=mean((N(:,:,i:(i+t))).*(Ns(:,:,i:(i+t))),3);
                    N2(:,:,i)=((N2(:,:,i))./(mean(N(:,:,i:(i+t)),3)));
                end
                1
%                 f=find(isnan(N2)==1);
%                 N2(f)=0;
                filename=strcat('D:\Newdataanalysis\dynamiclengthscale\W2\W2selfshiftedinterfaceta',num2str(ii),num2str(t),'.mat');
                save(filename,'-v7.3');
            catch
                warning('Index exceeds matrix dimensions.');
                break
            end
        end
    end
end