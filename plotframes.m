function plotframes(FR1, FR2, fs)
dt=1/fs;
i = input('Enter Frame Number:\n')
time = (1/fs)*length (FR1(:,i));
t=linspace(0,time,length(FR1(:,i)));
figure;
plot(t,FR1(:,i),'DisplayName','Signal');
[maxs,mins]=peakdet(FR1(:,i),dt,t);
peaktime=maxs(:,1);
j =abs(diff(peaktime));
k = length(j);
hold on;
plot(maxs(:,1),maxs(:,2),'g*','DisplayName','Maxima'); 
plot(mins(:,1),mins(:,2),'r*','DisplayName','Minima');
title(['Cancer Voice Frame No. ',num2str(i)]);
xlabel('Time in Sec') % x-axis label
ylabel('Amplitude') % y-axis label
legend('show');
hold off;
X = sprintf(' No. of Pitch Periods in Cancer Frame is. %d',k);
disp(X);

time = (1/fs)*length (FR2(:,i));
t=linspace(0,time,length(FR2(:,i)));
figure;
plot(t,FR2(:,i),'DisplayName','Signal');
[maxs,mins]=peakdet(FR2(:,i),dt,t);
peaktime=maxs(:,1);
j =abs(diff(peaktime));
k = length(j);
hold on;
plot(maxs(:,1),maxs(:,2),'g*','DisplayName','Maxima'); 
plot(mins(:,1),mins(:,2),'r*','DisplayName','Minima');
title(['Non-Cancer Voice Frame No. ',num2str(i)]);
xlabel('Time in Sec') % x-axis label
ylabel('Amplitude') % y-axis label
legend('show');
hold off;
Y = sprintf('\n No. of Pitch Periods in Non- Cancer Frame is. %d',k);
disp(Y);