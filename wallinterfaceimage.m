% for i=1:10:max(CoordinatesInterface(:,3))
%     f=find(CoordinatesInterface(:,3)==i);
%     scatter(CoordinatesInterface(f,1),CoordinatesInterface(f,2));
%     hold on
%     axis([0 72 0 10])
%     plot(CoordinatesInterface(f,1),CoordinatesInterface(f,2));
%     hold off
%     h=gcf;
%     saveas(h,strcat('E:\Wall-Data Analysis\W3\Interface\',num2str(i),'.tif'));
% end
% cm=zeros(max(CoordinatesInterface(:,3)),2);
% for i=1:1:max(CoordinatesInterface(:,3))
%     f=find(CoordinatesInterface(:,3)==i);
%     cm(i,1)=i;
%     cm(i,2)=mean(CoordinatesInterface(f,2));
% end
% avginterface=zeros(27,1);
% for i=1:1:72
%     f=find(CoordinatesInterface(:,1)==y(i) & CoordinatesInterface(:,3)>4000 & CoordinatesInterface(:,3)<8500 | CoordinatesInterface(:,3)>9000 & CoordinatesInterface(:,3)<12000);
%     A=CoordinatesInterface(f,2);
%     avginterface(i,1)=mean(A);
% end
% for i=4001:10:8500
%     f=find(CoordinatesInterface(:,3)==i);
%     scatter(CoordinatesInterface(f,1),CoordinatesInterface(f,2),'r');
%     hold on
%     axis([0 72 0 10])
%     plot(CoordinatesInterface(f,1),CoordinatesInterface(f,2),'r');
%     scatter(CoordinatesInterface(f,1),avginterface,'b');
%     plot(CoordinatesInterface(f,1),avginterface,'b');
%     hold off
%     h=gcf;
%     saveas(h,strcat('E:\Wall-Data Analysis\W2\Interfacemean\',num2str(i),'.tif'));
% end
% fluctuations=[];
% % x=1:0.1:72;
% x=(3*((21.7)/20.66)):((2*2.17)/20.66):(70*((21.7)/20.66));
% Amplitude2=zeros(168,2);
% Amplitude2(:,1)=(1/(x(end)-x(1))):(1/((x(end)-x(1)))):(336/(2*(x(end)-x(1))));
% for i=4001:1:8500
%     f=find(CoordinatesInterface(:,3)==i);
%     A=CoordinatesInterface(f,1:2);
%     A(:,2)=A(:,2)-avginterface;
%      Y1=interp1(A(:,1),A(:,2),x','linear','extrap');
% %     scatter(A(:,1),A(:,2),'r');
% %     hold on
% %     plot(A(:,1),A(:,2),'r');
% %     hold off 
% %     h=gcf;
% %     saveas(h,strcat('E:\Wall-Data Analysis\W2\fluctuations\',num2str(i),'.tif'));
%     fluctuations=vertcat(fluctuations,Y1);
%     F=fft(Y1);
%     Z=(abs(F/length(Y1)));
%     Z=Z.^2;
%     Amplitude2(:,2)=Amplitude2(:,2)+Z(1:168);
%     fluctuations=vertcat(fluctuations,Y1);
% end
% for i=9001:1:12000
%     f=find(CoordinatesInterface(:,3)==i);
%     A=CoordinatesInterface(f,1:2);
%     A(:,2)=A(:,2)-avginterface;
%      Y1=interp1(A(:,1),A(:,2),x','linear','extrap');
% %     scatter(A(:,1),A(:,2),'r');
% %     hold on
% %     plot(A(:,1),A(:,2),'r');
% %     hold off 
% %     h=gcf;
% %     saveas(h,strcat('E:\Wall-Data Analysis\W2\fluctuations\',num2str(i),'.tif'));
%     fluctuations=vertcat(fluctuations,Y1);
%     F=fft(Y1);
%     Z=(abs(F/length(Y1)));
%     Z=Z.^2;
%     Amplitude2(:,2)=Amplitude2(:,2)+Z(1:168);
%     fluctuations=vertcat(fluctuations,Y1);
% end
% Amplitude2(:,2)=Amplitude2(:,2)/7500;
% coordinates=[];
% f=find(unique(A(:,1)));
% xx=A(f,1);
% for i=1:1:12
%     f=find(CoordinatesInterface(:,3)<(i*1000) & CoordinatesInterface(:,3)>((i-1)*1000));
%     A=CoordinatesInterface(f,1:2);
%     B=zeros(72,3);
%     for j=1:1:72
%         f1=find(A(:,1)==xx(j));
%         B(j,1)=xx(j);
%         C=A(f1,2);
%         B(j,2)=mean(C);
%         B(j,3)=i;
%     end
%     coordinates=vertcat(coordinates,B);
% end
% for i=1:1:12
%     f=find(coordinates(:,3)==i);
%     scatter(coordinates(f,1),coordinates(f,2),'b');
%     hold on
%     axis([0 72 0 10])
%     plot(coordinates(f,1),coordinates(f,2),'b');
%     hold off
%     h=gcf;
%     saveas(h,strcat('E:\Wall-Data Analysis\W2\averageinterface\',num2str(i),'.tif'));
% end
f=find(FinalCoordinates(:,3)==1);
H=N2(:,:,1);
imagesc(H)
colormap(cmap)
hold on
scatter(FinalCoordinates(f,2)+13,FinalCoordinates(f,1),'b');
set(gca,'TickDir','out')
axis([0 54 0 72])
axis ij
plot(FinalCoordinates(f,2)+13,FinalCoordinates(f,1),'b');
hold off
% avginterface=[];
% for i=1:1:72
%     f=find(FinalCoordinates(:,1)==i& FinalCoordinates(:,3)>=9501 & FinalCoordinates(:,3)<=9512);
%     A=FinalCoordinates(f,2);
%     avginterface(i,1)=i;
%     avginterface(i,2)=mean(A);
% end   
% H=N2(:,:,10000);
% imagesc(H)
% colormap(cmap)
% scatter(averageinterface(:,2)+14,averageinterface(:,1),'b');
% set(gca,'TickDir','out')
% hold on
% axis([0 54 0 72])
% axis ij
% set(gca,'TickDir','out')
% plot(averageinterface(:,2)+14,averageinterface(:,1),'b');
% hold off
% for i=1:1:12080
%     H=N2(:,:,i);
%     imagesc
% end