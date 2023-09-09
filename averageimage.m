%to find the average image
t=5132;
n=9508;
% n=max(R(:,4));
m1=1200;
m2=900;
for i=1:25:n-t
    C=zeros(m2,m1);
    for j=i:1:(i+t)
        A=imread(strcat('C:\Users\Divya\Desktop\codes\D15-dedrifted2\',num2str(j),'.tif'));
        B=im2bw(A);
        C=B+C;
    end
    C=C/t;
    imshow(C);
    saveas(gcf,strcat('C:\Users\Divya\Desktop\codes\D15-average2\',num2str(i),'.tif'));
end
