%load the mostmobile particle coordinates
f=find(mostmobile(:,4)<=4332);
most_mobile=mostmobile(f,:);
f1=unique(most_mobile(:,5));
A=histc(most_mobile(:,5),f1);
f2=find(A<=2500);
req_ids=most_mobile(f2,5); %contains the ids of the particles with length less than 2500
