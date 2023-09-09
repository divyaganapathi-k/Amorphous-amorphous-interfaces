clearvars
for variable=1:1:9
%     filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(variable),'.mat');
    filename=strcat('D:\Final Data\1ta-data analysis\W7\W7final-shiftedinterfaceta1',num2str(variable),'.mat');
    load(filename);
    m1=58;
    m2=24;
    ff=find(AA(:,1)==m1 & AA(:,2)==m2);
%     dummy=genvarname(strcat('lengthoft',num2str(variable)));
    dummy=matlab.lang.makeValidName(strcat('lengthoft',num2str(variable)));
    eval([dummy '= AA(ff,3);']);
end
clearvars -except R lengthoft1 lengthoft2 lengthoft3 lengthoft4 lengthoft5 lengthoft6 lengthoft7 lengthoft8 lengthoft9
m1=58;
m2=24;
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
% distance at which the dynamic length scale should be calculated and the
% relevant boxes
for iii=4:1:10
    dist_pin=iii;
    f=find(indexmatrix(:,5)<dist_pin & indexmatrix(:,5)>=dist_pin-1);
    required_boxes=[];
    required_boxes(:,1:2)=indexmatrix(f,1:2);
    l=length(required_boxes(:,1));
    selfoverlapfunction=zeros(36,12);
    for ii=1:1:9
        j=1;
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
%         lengthoft=[];
%         name=strcat('lengthoft = lengthoft',num2str(ii));
%         eval(name);
        name=strcat('lengthoft',num2str(ii));
        lengthoft=eval(name);
        Referencematrix=zeros(length(R(:,1)),4);
        RR=zeros(length(R(:,1)),2);
        RR(:,1)=R(:,1)-addon1;
        RR(:,2)=R(:,2)-addon2;
        Referencematrix(:,1)=fix(RR(:,1)/((0.5)*sigmas))+1;  
        Referencematrix(:,2)=fix(RR(:,2)/((0.5)*sigmas))+1;
        Referencematrix(:,3:4)=R(:,3:4);
        box_referencematrix=[];
        for k=1:1:l
%             f1=find(Referencematrix(:,1)==required_boxes(k,1) & Referencematrix(:,2)==required_boxes(k,2));
            f1=Referencematrix(:,1)==required_boxes(k,1) & Referencematrix(:,2)==required_boxes(k,2);
            boxreferencematrix=Referencematrix(f1,1:4);
            box_referencematrix=vertcat(box_referencematrix,boxreferencematrix);
        end
        for k2=1:1:4
            for k1=1:1:9
                t=k1*(10^(k2-1));
                try
                    box_referencematrix1=zeros(length(required_boxes(:,1)),6,n-t);
                    numerator=zeros(length(required_boxes(:,1)),n-t);
                    denominator=zeros(length(required_boxes(:,1)),n-t);
                    parfor k=1:1:n-t
                        A=zeros(length(required_boxes),6);
                        A(:,1:2)=required_boxes(:,1:2);
                        A(:,3)=k;
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
                        box_referencematrix1(:,:,k)=A;
                    end
                    numerator1=zeros(length(required_boxes(:,1)),n-(2*t));
                    denominator1=zeros(length(required_boxes(:,1)),n-(2*t));
                    parfor k=1:1:n-2*t
                         numerator1(:,k)=mean(numerator(:,k:k+t),2);
                         denominator1(:,k)=mean(denominator(:,k:k+t),2);
                    end
                    selfoverlap=[];
                    selfoverlap=numerator1./denominator1;
%                     f=find(isnan(selfoverlap)==1);
%                     selfoverlap(f)=0;
                    avselfoverlap=nanmean(selfoverlap);
                    reqd_avselfoverlap=zeros(length(lengthoft),1);
                    parfor k=1:1:length(lengthoft)
                        reqd_avselfoverlap(k)=avselfoverlap(lengthoft(k,1));
                    end
                    q=0;
                    q=nanmean(reqd_avselfoverlap);
                    selfoverlapfunction(j,1)=t;
                    selfoverlapfunction(j,ii+1)=q;
                    j=j+1;
                catch
                    warning('Index exceeds matrix dimensions.');
                    break
                 end
            end
        end
    end
    selfoverlapfunction(:,11)=sum(selfoverlapfunction(:,2:10),2);
    selfoverlapfunction(:,12)=selfoverlapfunction(:,11)/9;
    filename=strcat('D:\Newdataanalysis\dynamiclengthscale\W7\W72dynlen1',num2str(iii),'.mat');
    save(filename,'-v7.3');
end