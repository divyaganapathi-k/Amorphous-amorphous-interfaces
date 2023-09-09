A=imread('C:\Users\Divya\Desktop\0T_1-3.tif');
imshow(A);
hold on
H=Np(:,:,1);
H=H';
H1=imresize(H,21.7);
H1=flipud(H1);
imagesc(H1, 'AlphaData', .5);
colormap(cmap);
% alpha(0.5)
% im.AlphaData = .2;
