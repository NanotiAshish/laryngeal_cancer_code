%Author:        Ashish Nanoti
%Email:         ashish.nanoti@somaiya.edu
%University:    KJ Somaiya College of Engineering
%This program accepts an audio sample  as input and returns a
%result of Neural Network.

% Programm Starts Here
clear all;
close all;
clc;
%%
wint = 30;
ovlp = 50;
fs = 44100;
dt=1/fs;

wsam = fix(wint*10^-3*fs);                    %No of Samples/window 
ovsam = fix(wsam * ovlp / 100);                  %No of samples/overlap
hsam  = wsam - ovsam; 
win_sam = hamming(wsam);
%%
currentd = cd;
Pname1 = uigetdir([currentd 'DATABASE_CANCER'], 'Load the Data Base of Cancerous Samples');
Pname2 = uigetdir([currentd 'DATABASE_NON_CANCER'], 'Load the Data Base of Non-Cancerrous Samples');
    d1 = dir(Pname1);
    d1 = d1(3:end);
    d2 = dir(Pname2);
    d2 = d2(3:end);
%% Cancerous Voice
FR1 = [];
FE1=[];
fe1=[];
for i = 1:length(d1)
y = audioread(fullfile(Pname1,d1(i).name));
y = (y - mean(y))/std(y);
y = y/(sum(y.^2, 1)/length(y));              %Normalisation
y = myVAD(y);
n1 = length(y);

nframe = fix(n1/hsam) - 1;
% FRAMING ALGORITHM AND V/UV DETECTION
start = 1; 
stop = wsam;
seg = zeros(wsam , 1);
f1 =[];
for m = 1:nframe
    if stop < n1
        seg(1:wsam, 1) = y(start: stop, 1);%.*win_sam;
    else
        seg(1:wsam, 1) = [y(start: n1, 1); zeros(stop - n1, 1)]; %.*win_sam;
    end
    start = start + hsam;
    stop  = start + wsam - 1; 
    f1 = [f1 seg];
end
FR1 = cat(2,FR1,f1);
end
f1 =[];
f2 =[];
len = size(FR1);
for i=1:len(2)

    time = (1/fs)*length (FR1(:,i));
    t=linspace(0,time,length(FR1(:,i)));
    [maxs,mins]=peakdet(FR1(:,i),dt,t);
    if size(maxs)~=[0,0]
    [no_pich_periods,jitt_local,jitt_local_absolute,jitt_RAP,jitt_PPQ,jitt_dB,shim_rel,shimm_local_abso,shim_APQ3,shim_APQ5,shim_dB] = jittershimmer(maxs,mins);
    f2= [no_pich_periods,jitt_local,jitt_local_absolute,jitt_RAP,jitt_PPQ,jitt_dB,shim_rel,shimm_local_abso,shim_APQ3,shim_APQ5,shim_dB];
    f1= [no_pich_periods;jitt_local;jitt_local_absolute;jitt_RAP;jitt_PPQ;jitt_dB;shim_rel;shimm_local_abso;shim_APQ3;shim_APQ5;shim_dB];
    
    FE1 = cat(2,FE1,f1);
    fe1 = cat(1,fe1,f2);
else
end
end

%% Non - Cancerous Voice
FR2 = [];
FE2=[];
fe2 =[];
for i = 1:length(d2)
y = audioread(fullfile(Pname2,d2(i).name));
y = (y - mean(y))/std(y);
y = y/(sum(y.^2, 1)/length(y));              %Normalisation
y = myVAD(y);
n1 = length(y);
%segs = fix((n1-wsam)/ovsam)+1;  %Number of segments in speech signal

nframe = fix(n1/hsam) - 1;
% FRAMING ALGORITHM AND V/UV DETECTION
start = 1; 
stop = wsam;
seg = zeros(wsam , 1);
f1 =[];
for m = 1:nframe
    if stop < n1
        seg(1:wsam, 1) = y(start: stop, 1); %.*win_sam;
    else
        seg(1:wsam, 1) = [y(start: n1, 1); zeros(stop - n1, 1)]; %.*win_sam;
    end
    start = start + hsam;
    stop  = start + wsam - 1; 
    f1 = [f1 seg];
end
FR2 = cat(2,FR2,f1);
end
f1 =[];
f2 =[];
leng = size(FR2);
for i=1:leng(2)
    
    time = (1/fs)*length (FR2(:,i));
    t=linspace(0,time,length(FR2(:,i)));
    [maxs,mins]=peakdet(FR2(:,i),dt,t);
    if size(maxs)~=[0,0]
    [no_pich_periods,jitt_local,jitt_local_absolute,jitt_RAP,jitt_PPQ,jitt_dB,shim_rel,shimm_local_abso,shim_APQ3,shim_APQ5,shim_dB] = jittershimmer(maxs,mins);
    f2=[no_pich_periods,jitt_local,jitt_local_absolute,jitt_RAP,jitt_PPQ,jitt_dB,shim_rel,shimm_local_abso,shim_APQ3,shim_APQ5,shim_dB];
    f1=[no_pich_periods;jitt_local;jitt_local_absolute;jitt_RAP;jitt_PPQ;jitt_dB;shim_rel;shimm_local_abso;shim_APQ3;shim_APQ5;shim_dB];
    
    FE2 = cat(2,FE2,f1);
    fe2 = cat(1,fe2,f2);
    else
    end
end

%% Complete Feature and Target Matrix
FE = cat(2,FE1,FE2);
T = zeros(2,length(FE));
T (1, 1:length(FE1))=1;
T(2,length(FE1)+1:length(FE))=1;

%% Neural Network Training
% net = feedforwardnet(11);
% net = train(net,FE,T);

% net = patternnet([20 10], 'trainscg');
% net = train(net, FE, T);

% net = newff(FE, T, 20);
% net = train(net, FE, T);
% 
% net = newgrnn(FE, T, 1e-1);
% net = train(net, FE, T);

% net = newrb(FE, T, 0.000001, 0.01, 11);
% net = train (net, FE, T);

net=newff(FE,T,[8, 6, 3]);
net=train(net,FE,T);
%% 
currentd = cd;
Pname6 = uigetdir([currentd 'DATABASE_CANCER'], 'Load the Data Base of Cancerous Samples');
Pname7 = uigetdir([currentd 'DATABASE_NON_CANCER'], 'Load the Data Base of Non-Cancerrous Samples');
    d6 = dir(Pname6);
    d6 = d6(3:end);
    d7 = dir(Pname7);
    d7 = d7(3:end);
%% Cancer Voice Data
Tar1=[];
Tar2=[];
for i = 1:length(d6)
y = audioread(fullfile(Pname6,d6(i).name));
y = (y - mean(y))/std(y);
y = y/(sum(y.^2, 1)/length(y));              %Normalisation
y = myVAD(y);
n1 = length(y);
FR6 =[];
FE6 =[];
fe6 =[];
%   TOTAL NUMBER OF WINDOWS
nframe = fix(n1/hsam) - 1;
%   Framing Algorithm
start = 1; 
stop = wsam;
seg = zeros(wsam , 1);
f1 = [];
for m = 1:nframe
    if stop < n1
        seg(1:wsam, 1) = y(start: stop, 1);%.*win_sam;
    else
        seg(1:wsam, 1) = [y(start: n1, 1); zeros(stop - n1, 1)];%.*win_sam;
    end
    start = start + hsam;
    stop  = start + wsam - 1; 
    f1 = [f1 seg];
end
FR6 = cat(2,FR6,f1);
% Jitter and Shimmer
f1 =[];
f2 =[];
len = size(FR6);
for i=1:len(2)
    time = (1/fs)*length (FR6(:,i));
    t=linspace(0,time,length(FR6(:,i)));
    [maxs,mins]=peakdet(FR6(:,i),dt,t);
    if size(maxs)~=[0,0]
    [no_pich_periods,jitt_local,jitt_local_absolute,jitt_RAP,jitt_PPQ,jitt_dB,shim_rel,shimm_local_abso,shim_APQ3,shim_APQ5,shim_dB] = jittershimmer(maxs,mins);
    f2= [no_pich_periods,jitt_local,jitt_local_absolute,jitt_RAP,jitt_PPQ,shimm_local_abso];
    f1= [no_pich_periods;jitt_local;jitt_local_absolute;jitt_RAP;jitt_PPQ;shimm_local_abso];
    FE6 = cat(2,FE6,f1);
    fe6 = cat(1,fe6,f2);
    else
    end
end
check = sim(net,FE6);
a = mean(check(1,:));
b = mean(check(2,:));
if b <= a
    Tar1 = [1;0];
else
    Tar1 = [0;1];
end
Tar2 = cat(2,Tar2,Tar1);
end

%% Non-Cancer
Tar3=[];
Tar4=[];
for i = 1:length(d7)
y = audioread(fullfile(Pname7,d7(i).name));
y = (y - mean(y))/std(y);
y = y/(sum(y.^2, 1)/length(y));              %Normalisation
y = myVAD(y);
n1 = length(y);
FR7 =[];
FE7 =[];
fe7 =[];
%   TOTAL NUMBER OF WINDOWS
nframe = fix(n1/hsam) - 1;
%   Framing Algorithm
start = 1; 
stop = wsam;
seg = zeros(wsam , 1);
f1 = [];
for m = 1:nframe
    if stop < n1
        seg(1:wsam, 1) = y(start: stop, 1);%.*win_sam;
    else
        seg(1:wsam, 1) = [y(start: n1, 1); zeros(stop - n1, 1)];%.*win_sam;
    end
    start = start + hsam;
    stop  = start + wsam - 1; 
    f1 = [f1 seg];
end
FR7 = cat(2,FR7,f1);
% Jitter and Shimmer
f1 =[];
f2 =[];
len = size(FR7);
for i=1:len(2)
    time = (1/fs)*length (FR7(:,i));
    t=linspace(0,time,length(FR7(:,i)));
    [maxs,mins]=peakdet(FR7(:,i),dt,t);
    if size(maxs)~=[0,0]
    [no_pich_periods,jitt_local,jitt_local_absolute,jitt_RAP,jitt_PPQ,jitt_dB,shim_rel,shimm_local_abso,shim_APQ3,shim_APQ5,shim_dB] = jittershimmer(maxs,mins);
    f2= [no_pich_periods,jitt_local,jitt_local_absolute,jitt_RAP,jitt_PPQ,shimm_local_abso];
    f1= [no_pich_periods;jitt_local;jitt_local_absolute;jitt_RAP;jitt_PPQ;shimm_local_abso];
    FE7 = cat(2,FE7,f1);
    fe7 = cat(1,fe7,f2);
    else
    end
end
check = sim(net,FE7);
a = mean(check(1,:));
b = mean(check(2,:));
if b <= a
    Tar3 = [1;0];
else
    Tar3 = [0;1];
end
Tar4 = cat(2,Tar4,Tar3);
end
Tar5 = cat(2,Tar2,Tar4);
%% Confusion Matrix
StTar = zeros(size(Tar5));
StTar(1, 1:length(Tar2))=1;
x = length(Tar2)+1;
y = length(Tar4);
StTar(2,length(Tar2)+1:length(Tar5))=1;

plotconfusion(StTar,Tar5);
%% Plot Features
plotdata(fe1,fe2);

%% Plot Comparision
plotfeature(fe1, fe2);

%% Plot Frames
plotframes(FR1,FR2,fs);

%% Euclidian Distance and Mean Square Error
% s1 = size (FE1);
% di = [];
% e1 = [];
% for i =1:s1(1)
%     x = FE1(i,:);
%     y = FE2(i,:);
%     d = euclid (x, y);
%     e = mensqer (x, y);
%     di = cat(2,di,d);
%     e1 = cat(2, e1, e);
% end
% figure;
% bar(di,'DisplayName','di');
% figure;
% bar(e1,'DisplayName','e1');
