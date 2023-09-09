clearvars
x=1:1:144;
y=1:1:117;
m1=58;
m2=23;
b21=(2*m1)-1; b22=(2*m2)-1;
indexmatrix=zeros((length(x)*length(y)),5);
indexmatrix(:,1)=repelem(x,length(y));
indexmatrix(:,2)=repmat(y,1,length(x));
indexmatrix(:,3)=indexmatrix(:,1)-0.5-b21;
indexmatrix(:,4)=indexmatrix(:,2)-0.5-b22;
indexmatrix(:,5)=(indexmatrix(:,3).^2+indexmatrix(:,4).^2).^(0.5);
overlapfunction=zeros(36,12,20);
% filename=strcat('D:\Final Data\1ta-data analysis\W2\W2-final-1ta-',num2str(m1),'-',num2str(m2),'.mat');
% load(filename);
% filename=strcat('D:\Final Data\1ta-data analysis\W2\W2','-2.mat');
% load(filename);
filename=('D:\Final Data\W2\W2-7t-final3.mat');
load(filename);
lengthoft=unique(FinalCoordinates(:,3));
z=1;
for jj=1:1:4
    for j=1:1:9
        t=j*(10^(jj-1));
        overlapfunction(z,1,:)=t;
        z=z+1;
    end
end
for ii=1:1:9
%     filename=strcat('D:\Final Data\1ta-data analysis\W2\W2final-shiftedinterfaceta1',num2str(ii),'.mat');
    filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(ii),'.mat');
    load(filename);
    m1=58;
    m2=23;
    b21=(2*m1)-1; b22=(2*m2)-1;
    [a, b, c]=size(N);
    clear N2
    q=zeros(a,b);
    l=1;
    for jj=1:1:4
        for j=1:1:9
            t=j*(10^(jj-1));
            NN1=zeros(a,b,(n-t));
            parfor i=1:1:(n-t)
                NN1(:,:,i)=N(:,:,i).*N(:,:,(i+t));
            end
            f=find(lengthoft<=(n-t));
            q=mean(NN1(:,:,lengthoft(f)),3);
            p=mean(N(:,:,lengthoft(f)),3);
            for iii=1:1:20
                dist_pin=iii;
                f=find(indexmatrix(:,5)<dist_pin & indexmatrix(:,5)>=dist_pin-1);
                required_boxes=[];
                required_boxes(:,1:2)=indexmatrix(f,1:2);
                dummy=sub2ind([a b],required_boxes(:,1), required_boxes(:,2));
                overlapfunction(l,ii+1,iii)=sum(q(dummy))/sum(p(dummy));
            end
             l=l+1
        end
    end
end
for i=1:1:20
    overlapfunction(:,11,i)=sum(overlapfunction(:,2:10,i),2);
    overlapfunction(:,12,i)=(overlapfunction(:,11,i))/9;
end
for i=1:1:20
    overlap=overlapfunction(:,:,i);
    filename=strcat('D:\Newdataanalysis\sumoverlapfunction\W2\W2-',num2str(m1),'-',num2str(m2),'-',num2str(i),'-3.mat');
    save(filename,'overlap');
end