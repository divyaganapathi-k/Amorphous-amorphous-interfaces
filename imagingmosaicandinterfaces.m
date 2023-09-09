sigmas=21.7;
a=2;
% FinalCoordinates1(:,2)=(FinalCoordinates1(:,2))*((sigmas)/21.7);
% FinalCoordinates2(:,2)=(FinalCoordinates2(:,2))*((sigmas)/21.7);
% FinalCoordinates1(:,2)=a*(FinalCoordinates1(:,2))/21.7;
% FinalCoordinates2(:,2)=a*(FinalCoordinates2(:,2))/21.7;
% FinalCoordinates3(:,2)=a*(FinalCoordinates3(:,2))/21.7;
% FinalCoordinates4(:,2)=a*(FinalCoordinates4(:,2))/21.7;
[FinalCoordinates1(:,4),FinalCoordinates1(:,5)]=pol2cart(pi/2+FinalCoordinates1(:,1),FinalCoordinates1(:,2));
% [FinalCoordinates2(:,4),FinalCoordinates2(:,5)]=pol2cart(pi/2+FinalCoordinates2(:,1),FinalCoordinates2(:,2));
% [FinalCoordinates3(:,4),FinalCoordinates3(:,5)]=pol2cart(pi/2+FinalCoordinates3(:,1),FinalCoordinates3(:,2));
% [FinalCoordinates4(:,4),FinalCoordinates4(:,5)]=pol2cart(pi/2+FinalCoordinates4(:,1),FinalCoordinates4(:,2));
FinalCoordinates1(:,4)=FinalCoordinates1(:,4)+(23*a);
FinalCoordinates1(:,5)=FinalCoordinates1(:,5)+(58*a);
% FinalCoordinates2(:,4)=FinalCoordinates2(:,4)+(23*a);
% FinalCoordinates2(:,5)=FinalCoordinates2(:,5)+(58*a);
% FinalCoordinates3(:,4)=FinalCoordinates3(:,4)+(29*a);
% FinalCoordinates3(:,5)=FinalCoordinates3(:,5)+(36*a);
% FinalCoordinates4(:,4)=FinalCoordinates4(:,4)+(14*a);
% FinalCoordinates4(:,5)=FinalCoordinates4(:,5)+(26*a);
for i=1:1:length(timet)
%     close all
%     load('D:\Newdataanalysis\1boxes\W2\W2unpinned-shiftedinterfacetasigmas11.mat');
    H=N2(:,:,timet(i));
    figure();
    imagesc(H);
    colormap(cmap);
%     frame = getframe(gcf);
%     image1 = frame2im(frame);
%     image2 = imcrop(image1, [75 32 431 342]);
%     image2 = imgaussfilt(image2,4.5);
%     figure
%     image(image2)
    
%     Iblur = imgaussfilt(H,9);
%     imshow(Iblur);
%     colormap(cmap);
%     H=imread(strcat('D:\Newdataanalysis\mosaic\blur-W2\',num2str(i),'.tif'));
%     H=imread(strcat('D:\Newdataanalysis\mosaic\Images-W2\',num2str(i),'.tif'));
%     H1(:,:,1)=imresize(H(:,:,1),[72,44]);
%     H1(:,:,2)=imresize(H(:,:,2),[72,44]);
%     H1(:,:,3)=imresize(H(:,:,3),[72,44]);
%     H2=mean(H1,3);
%       C=image(H1);
%     Iblur = imgaussfilt(H1, 9);
%     image(Iblur);
    hold on
    f1=find(FinalCoordinates1(:,3)==i);
    f2=find(FinalCoordinates2(:,3)==i);
%     f3=find(FinalCoordinates3(:,3)==i);
%     f4=find(FinalCoordinates4(:,3)==i);
    scatter(FinalCoordinates1(f1,4),FinalCoordinates1(f1,5),10,'b');
    scatter((23*a),((58)*a),40,'b');
    plot(FinalCoordinates1(f1,4),FinalCoordinates1(f1,5),'b');
%     scatter(FinalCoordinates2(f2,4),FinalCoordinates2(f2,5),10,'k');
%     scatter((23*a),(58*a),40,'b');
%     plot(FinalCoordinates2(f2,4),FinalCoordinates2(f2,5),'k');
%     scatter(FinalCoordinates3(f3,4),FinalCoordinates3(f3,5),10,'b');
%     scatter((29),(36),40,'b');
%     plot(FinalCoordinates3(f3,4),FinalCoordinates3(f3,5),'b');
%     scatter(FinalCoordinates4(f4,4),FinalCoordinates4(f4,5),10,'k');
%     scatter((14)*a,(26)*a,40,'b');
%     plot(FinalCoordinates4(f4,4),FinalCoordinates4(f4,5),'k');
%     h=gcf;
% %     saveas(h,strcat('D:\Newdataanalysis\mosaic\blur+interface-W2\',num2str(i),'.tif'));
%     saveas(h,strcat('E:\0.5boxes\W7\W7-58-24-interface\',num2str(i),'.tif'));
%     close
end