clearvars
load('C:\Users\Divya\Desktop\W2-partremoved.mat');
H=imread('C:\Users\Divya\Desktop\W2-firsttaua1.tif');
image(H);
set(gca,'YDir','normal')
hold on
scatter(((1056/(1171.8))*mostmobile3(:,2)),((532/(1562.4))*mostmobile3(:,1)),10,'b');
%mostmobile1 contains all the mostmobile particles from the tau alpha
%period of the image
%mostmobile contains all the mostmobile particles for the whole duration of
%the experiment
% The sequence in mostmobile3 is 1-y coordinate 2-x coordinate 2-time
% 4-particle id