clearvars
for ii=1:1:9
%     filename=strcat('D:\Final Data\1ta-data analysis\W2\W2final-shiftedinterfaceta1',num2str(ii),'.mat');
    filename=strcat('D:\Final Data\W2\W2final-shiftedinterface7',num2str(ii),'.mat');
    load(filename);
    m1=58;
    m2=23;
    f=find(AA(:,1)==m1 & AA(:,2)==m2);
    pint=AA(f,3);
    time=[];
    parfor i=1:1:length(pint)
        dummy=pint(i):1:(pint(i)+t);
        time=vertcat(time,dummy);
    end
    lengthoft=unique(time);
    dummy1=matlab.lang.makeValidName(strcat('lengthoft',num2str(ii)));
    eval([dummy1 '= lengthoft;']);
end
clearvars -except lengthoft1 lengthoft2 lengthoft3 lengthoft4 lengthoft5 lengthoft6 lengthoft7 lengthoft8 lengthoft9
filename='D:\Newdataanalysis\dynamiclengthscale\W2\W2lengthoft.mat';
save(filename,'-v7.3');