function [no_pich_periods,jitt_local,jitt_local_absolute,jitt_RAP,jitt_PPQ5,jitt_dB,shim_rel,shimm_local_abso,shim_APQ3,shim_APQ5,shim_dB]=JitterShimmer(maxs,mins)
% actual code -->JitterShimmer.m
% dt=1/fs;
% time = (1/fs)*length (y);
% t=linspace(0,time,length(y));
% 
% %find peaks in signal
% [maxs,mins]=peakdet(y,dt,t);

%maximum peak values time in column 1
peaktime=maxs(:,1);
%peak maximum values in column 2
peakval=maxs(:,2);                  % V(i)

%% Pitch period
pitchperiods=abs(diff(peaktime));   %P(i) in formula
pchdiff=zeros(length(pitchperiods)-1,1);   % (N-1) in formula

no_pich_periods = length(pitchperiods);
%difference b/w successive pitch periods
for k=1:length(pitchperiods)-1             %(N-1)
     pchdiff(k)=abs(pitchperiods(k)-pitchperiods(k+1));  % |P(i)- P(i+1)|
end

avgpchdiff=mean(pchdiff);           % [Summation |P(i)-P(i+1)|]/(N-1)
avgpch=mean(pitchperiods);          % [Summation P(i)] / N 

jitt_local=((avgpchdiff/avgpch)*100);           %{([Summation |P(i)-P(i+1)|]/(N-1)) / [[Summation P(i)] / N ])*100}

jitt_local_absolute= mean(pchdiff);

pchdiff2 = zeros(length(pitchperiods)-1,1);
sumlocpitchper=[];
for k=1:length(pitchperiods)-1             %i varies from (1:(N-1)) in formula
    if k<2
         sumlocpitchper= mean([pitchperiods(1);pitchperiods(2)]);
         
    else
    localpchperiods=zeros(3,1);
        for i=(k-1):(k+1)                       %j varies from((i-1)to (i+1))
            localpchperiods =(pitchperiods(i)); 
        end
    sumlocpitchper =mean(localpchperiods);
    end
    
     pchdiff2(k)=abs(pitchperiods(k)-sumlocpitchper);  % |P(i)- (sum(P(j)/3))|
end

avgpchdiff2=mean(pchdiff2);                             %sum from i=1 to (N-1) (|P(i)- (sum(P(j)/3))|)
jitt_RAP = ((avgpchdiff2 / avgpch)*100);

pchdiff3 = zeros(length(pitchperiods)-1,1);
sumlocpitchper=[];
for k=2:length(pitchperiods)-2                  %i varies from (2:(N-2)) in formula
    if k<3
        sumlocpitchper= mean([pitchperiods(1);pitchperiods(2);pitchperiods(3);pitchperiods(4)]);
    else
        localpchperiods=zeros(5,1);             
        for i=(k-2):(k+2)                       %j varies from((i-2)to (i+2))
            localpchperiods =(pitchperiods(i));
        end
    sumlocpitchper =mean(localpchperiods);
    end
    
    pchdiff3(k)=abs(pitchperiods(k)-sumlocpitchper);        % |P(i)- (sum(P(j)/5))|
end

avgpchdiff3= [sum(pchdiff3)]/[length(pitchperiods)-1];

jitt_PPQ5 = ((avgpchdiff3 / avgpch)*100);

pitchlog = zeros(length(pitchperiods)-1,1);
for k=1:length(pitchperiods)-1
    pitchlog(k)=[20 * log(pitchperiods(k+1)/pitchperiods(k))];
end
pitchlog = abs(pitchlog);
jitt_dB = [mean(pitchlog)/(avgpch)];
%% 
pkdiff=abs(diff(peakval));          %|V(I)-V(i+1)| 
avgpkdiff=mean(pkdiff);             %[Summation |V(I)-V(i+1)|]/(N-1)
avgpks=mean(peakval);               %[Summation V(i)] / N 

shim_rel=((avgpkdiff/avgpks)* 100);              %{([Summation |V(i)-V(i+1)|]/(N-1)) / [[Summation V(i)] / N ])}

shimm_local_abso=mean(pkdiff);
pkdiff2 = zeros(length(peakval)-1,1);
sumlocpekper=[];
for k=1:length(peakval)-1             %i varies from (1:(N-1)) in formula
    if k<2
         sumlocpekper= mean([peakval(1);peakval(2)]);
         
    else
        localpekperiods=zeros(3,1);
        for i=(k-1):(k+1)                       %j varies from((i-1)to (i+1))
            localpekperiods =(peakval(i)); 
        end
    sumlocpekper =mean(localpekperiods);
    end
  pkdiff2(k)=abs(peakval(k)-sumlocpekper);      % |V(i)- (sum(V(j))/3))|
end
avgpekdiff2=mean( pkdiff2);                     %sum from i=1 to (N-1) (|V(i)- (sum(V(j))/3))|)
shim_APQ3 = ((avgpekdiff2 / avgpks)* 100);

pkdiff3 = zeros(length(peakval)-1,1);
sumlocpekper=[];
for k=2:length(peakval)-2               %i varies from (2:(N-2)) in formula
    if k<3
        sumlocpekper= mean([peakval(1);peakval(2);peakval(3);peakval(4)]);
    else
        localpekperiods=zeros(5,1);
        for i=(k-2):(k+2) 
            localpekperiods =(peakval(i));
        end
   sumlocpekper =mean(localpekperiods);
    end
   pkdiff3(k)=abs(peakval(k)-sumlocpekper);     % |V(i)- (sum(V(j))/5))|
end
avgpekdiff3=mean( pkdiff3);                     %sum from i=1 to (N-1) (|V(i)- (sum(V(j))/5))|)
shim_APQ5 = ((avgpekdiff3 / avgpks)* 100);

peklog = zeros(length(peakval)-1,1);
for k=1:length(peakval)-1
    peklog(k)=[20 * log(peakval(k+1)/peakval(k))];
end
peklog = abs(peklog);
shim_dB = (mean(peklog)/(avgpch));

