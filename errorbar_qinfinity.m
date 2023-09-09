clearvars -except R
n=max(R(:,3));
% error=zeros(round(n/10),2);
j=1;
for i=1:100:n
    f=find(R(:,3)==i);
    error(j,1)=i;
    error(j,2)=length(f);
    j=j+1;
end
error(:,2)=error(:,2)/(4*72*44);
