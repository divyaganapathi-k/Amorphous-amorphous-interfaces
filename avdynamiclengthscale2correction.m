% clearvars
% % load('F:\dynamiclengthscale\W3\W3lengthoft.mat');
% R=load('D:\Raw Data\W3_0T_1-13500_trk(16,0,10)_DD(100).txt');
% R=load('D:\Raw Data\W3_0T_1-8000_trk(18,0,10)_DD(100).txt');
for zz=1:1:1
    clearvars -except R zz lengthoft
    load('C:\Users\Divya\Desktop\26-29.mat');
    lengthoft=timet;
    if zz==1
        z1=26; z2=29;
    elseif zz==2
        z1=47; z2=16;
    elseif zz==3
        z1=31; z2=20;
%     elseif zz==4
%         z1=58; z2=33;
%     elseif zz==5
%         z1=59; z2=21;
%     elseif zz==6
%         z1=57; z2=18;
%     elseif zz==7
%         z1=41; z2=12;
    end
%     filename=strcat('D:\Final Data\1ta-data analysis\W3\W3-final-1ta-',num2str(z1),'-',num2str(z2),'.mat');
%     filename=strcat('D:\Final Data\1ta-data analysis\W3\W3-',num2str(zz),'.mat');
%     filename=('D:\Final Data\W3\W3-7t-final7.mat');
%     load(filename);
%     lengthoft=unique(FinalCoordinates(:,3));
    m1=z1; m2=z2;
    b21=(2*m1)-1; b22=(2*m2)-1;
    f= R(:,1)>=0 & R(:,2)>=0;
    R=R(f,1:4);
    n=max(R(:,3));
    sigmas=21.7;
    x=1:1:144;
    y=1:1:117;
    indexmatrix=zeros((length(x)*length(y)),5);
    indexmatrix(:,1)=repelem(x,length(y));
    indexmatrix(:,2)=repmat(y,1,length(x));
    indexmatrix(:,3)=indexmatrix(:,1)-0.5-b21;
    indexmatrix(:,4)=indexmatrix(:,2)-0.5-b22;
    indexmatrix(:,5)=(indexmatrix(:,3).^2+indexmatrix(:,4).^2).^(0.5);
    for iii=1:1:20
        dist_pin=iii;
        f=find(indexmatrix(:,5)<dist_pin & indexmatrix(:,5)>=dist_pin-1);
        required_boxes=[];
        required_boxes(:,1:2)=indexmatrix(f,1:2);
        l=length(required_boxes(:,1));
        overlapfunction=zeros(36,12);
        for ii=1:1:9
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
%             name=strcat('lengthoft',num2str(ii));
%             lengthoft=eval(name);
            Referencematrix=zeros(length(R(:,1)),4);
            RR=zeros(length(R(:,1)),2);
            RR(:,1)=R(:,1)-addon1;
            RR(:,2)=R(:,2)-addon2;
            Referencematrix(:,1)=fix(RR(:,1)/((0.5)*sigmas))+1;  
            Referencematrix(:,2)=fix(RR(:,2)/((0.5)*sigmas))+1;
            Referencematrix(:,3:4)=R(:,3:4);
            box_referencematrix=[];
            for k=1:1:l
                f1=Referencematrix(:,1)==required_boxes(k,1) & Referencematrix(:,2)==required_boxes(k,2);
                boxreferencematrix=Referencematrix(f1,1:4);
                box_referencematrix=vertcat(box_referencematrix,boxreferencematrix);
            end
            j=1;
            for k2=1:1:4
                for k1=1:1:9
                    t=k1*(10^(k2-1));
                    try
                        numerator=zeros(length(required_boxes(:,1)),n-t);
                        denominator=zeros(length(required_boxes(:,1)),n-t);
                        parfor k=1:1:n-t
                            A=zeros(l,6);
                            A(:,1:2)=required_boxes(:,1:2);
                            A(:,3)=k;
                            if ismember(k,lengthoft)==1 && ismember(k+t,lengthoft)==1
                                f1=find(box_referencematrix(:,3)==k);
                                B=box_referencematrix(f1,[1 2 4]);
                                C1=ismember(A(:,1:2),B(:,1:2),'rows');
                                C1=double(C1);
                                A(:,4)=C1;
                                f2=find(box_referencematrix(:,3)==(k+t));
                                D=box_referencematrix(f2,[1 2 4]);
                                E=intersect(B,D,'rows');
                                C2=ismember(A(:,1:2),E(:,1:2),'rows');
                                C2=double(C2);
                                A(:,5)=C2;
                                A(:,6)=A(:,4).*A(:,5);
                                numerator(:,k)=A(:,6);
                                denominator(:,k)=A(:,4);
                            else
                                A(:,4)=0/0;
                                A(:,6)=0/0;
                                numerator(:,k)=A(:,6);
                                denominator(:,k)=A(:,4);
                            end
                        end
                            numerator1=[]; denominator1=[];
                            numerator1=nanmean(numerator,2);
                            denominator1=nanmean(denominator,2);
                            q=0;
                            value=[];
                            value=numerator1./denominator1;
                            ff=find(isnan(value)==1);
                            value(ff)=0;
                            q=mean(value);
                            overlapfunction(j,1)=t;
                            overlapfunction(j,ii+1)=q;
                            j=j+1;
                    catch
                        warning('Index exceeds matrix dimensions.');
                        break
                     end
                end
            end
        end
        overlapfunction(:,11)=sum(overlapfunction(:,2:10),2);
        overlapfunction(:,12)=overlapfunction(:,11)/9;
        filename=strcat('D:\Newdataanalysis\avdynamiclengthscale\W3\W3dynamiclen',num2str(iii),'-',num2str(m1),'-',num2str(m2),'-2.mat');
        save(filename,'overlapfunction');
    end
end