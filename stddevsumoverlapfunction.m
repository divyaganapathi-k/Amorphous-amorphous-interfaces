clearvars
x=1:1:144;
y=1:1:117;
m1=59;
m2=16;
b21=(2*m1)-1; b22=(2*m2)-1;
indexmatrix=zeros((length(x)*length(y)),5);
indexmatrix(:,1)=repelem(x,length(y));
indexmatrix(:,2)=repmat(y,1,length(x));
indexmatrix(:,3)=indexmatrix(:,1)-0.5-b21;
indexmatrix(:,4)=indexmatrix(:,2)-0.5-b22;
indexmatrix(:,5)=(indexmatrix(:,3).^2+indexmatrix(:,4).^2).^(0.5);
standarddeviation=zeros(36,12,20);
filename=strcat('D:\Final Data\1ta-data analysis\W4\W4-final-1ta-',num2str(m1),'-',num2str(m2),'.mat');
load(filename);
% filename=strcat('D:\Final Data\1ta-data analysis\W4\W4','-2.mat');
% load(filename);
lengthoft=unique(FinalCoordinates(:,3));
z=1;
for jj=1:1:4
    for j=1:1:9
        t=j*(10^(jj-1));
        standarddeviation(z,1,:)=t;
        z=z+1;
    end
end
for ii=1:1:9
    ii
    filename=strcat('D:\Final Data\1ta-data analysis\W4\W4final-shiftedinterfaceta1',num2str(ii),'.mat');
    load(filename);
    m1=59;
    m2=16;
    b21=(2*m1)-1; b22=(2*m2)-1;
    [a, b, c]=size(N);
    clear N2
    q2=zeros(a,b);
    q1=zeros(a,b);
    l=1;
    for jj=1:1:4
        for j=1:1:9
            t=j*(10^(jj-1))
            NN1=zeros(a,b,(n-t));
            parfor i=1:1:(n-t)
                NN1(:,:,i)=N(:,:,i).*N(:,:,(i+t));
            end
            ff=find(lengthoft<=(n-t));
            numb=length(ff);
            q2=mean(NN1(:,:,lengthoft(ff)),3);
            q1=mean(N(:,:,lengthoft(ff)),3);
            for iii=1:1:20
                dist_pin=iii;
                f=find(indexmatrix(:,5)<dist_pin & indexmatrix(:,5)>=dist_pin-1);
                required_boxes=[];
                required_boxes(:,1:2)=indexmatrix(f,1:2);
                dummy=sub2ind([a b],required_boxes(:,1), required_boxes(:,2));
                two=sum(q2(dummy));
                one=sum(q1(dummy));
                a1=0;
                a2=0;
                deltanumden=zeros(length(dummy),2);
                for m=1:1:length(dummy)
                    [dummy1,dummy2]=ind2sub([a b],dummy(m));
                    f1=find(NN1(dummy1,dummy2,lengthoft(ff)));
                    mm=length(f1);
                    f2=find(N(dummy1,dummy2,lengthoft(ff)));
                    nn=length(f2);
                    a2=sqrt((mm*((1-q2(dummy(m)))^2))+((numb-mm)*((q2(dummy(m)))^2)));
                    a1=sqrt((nn*((1-q1(dummy(m)))^2))+((numb-nn)*((q1(dummy(m)))^2)));
                    deltanumden(m,1)=a2;
                    deltanumden(m,2)=a1;
                end
                standarddeviation(l,ii+1,iii)=(sum(deltanumden(:,1))/(numb*two))+(sum(deltanumden(:,2))/(numb*one));
            end
             l=l+1
        end
    end
end
for i=1:1:20
    standarddeviation(:,11,i)=sum(standarddeviation(:,2:10,i),2);
    standarddeviation(:,12,i)=(standarddeviation(:,11,i))/9;
end
for i=1:1:20
    stddev=standarddeviation(:,:,i);
    filename=strcat('D:\Newdataanalysis\sumoverlapfunction\W4\W4stddev-',num2str(m1),'-',num2str(m2),'-',num2str(i),'-3.mat');
    save(filename,'stddev');
end