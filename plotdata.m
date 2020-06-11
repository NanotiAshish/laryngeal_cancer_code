function plotdata(fe1, fe2)
figure; 
plot(fe1(:,1),'k+','LineWidth', 2,'MarkerSize',7,'DisplayName','Cancer');
hold on;
plot(fe2(:,1),'ko','MarkerFaceColor','y','MarkerSize',7,'DisplayName','Non-Cancer');
legend('show')
title ('NO OF PITCH PERIODS');
xlabel('No. of Frames') % x-axis label
ylabel('Pitch Periods') % y-axis label
hold off;
figure; 
plot(fe1(:,2),'k+','LineWidth', 2,'MarkerSize',7,'DisplayName','Cancer');
hold on;
plot(fe2(:,2),'ko','MarkerFaceColor','y','MarkerSize',7,'DisplayName','Non-Cancer');
legend('show')
title ('JITTER ABSOLUTE');
xlabel('No. of Frames') % x-axis label
ylabel('Percentage %') % y-axis label
hold off;

figure;
plot(fe1(:,3),'k+','LineWidth', 2,'MarkerSize',7,'DisplayName','Cancer');
hold on;
plot(fe2(:,3),'ko','MarkerFaceColor','y','MarkerSize',7,'DisplayName','Non-Cancer');
legend('show')
title ('JITTER LOCAL ABSOLUTE');
xlabel('No. of Frames') % x-axis label
ylabel('Time Period') % y-axis label
hold off;

figure;
plot(fe1(:,4),'k+','LineWidth', 2,'MarkerSize',7,'DisplayName','Cancer');
hold on;
plot(fe2(:,4),'ko','MarkerFaceColor','y','MarkerSize',7,'DisplayName','Non-Cancer');
legend('show')
title ('JITTER RAP');
xlabel('No. of Frames') % x-axis label
ylabel('Percentage %') % y-axis label
hold off;

figure;
plot(fe1(:,5),'k+','LineWidth', 2,'MarkerSize',7,'DisplayName','Cancer');
hold on;
plot(fe2(:,5),'ko','MarkerFaceColor','y','MarkerSize',7,'DisplayName','Non-Cancer');
legend('show')
title ('JITTER PPQ');
xlabel('No. of Frames') % x-axis label
ylabel('Percentage %') % y-axis label
hold off;

figure;
plot(fe1(:,6),'k+','LineWidth', 2,'MarkerSize',7,'DisplayName','Cancer');
hold on;
plot(fe2(:,6),'ko','MarkerFaceColor','y','MarkerSize',7,'DisplayName','Non-Cancer');
legend('show')
title ('JITTER IN dB');
xlabel('No. of Frames') % x-axis label
ylabel('Frequency in dB') % y-axis label
hold off;

figure;
plot(fe1(:,7),'k+','LineWidth', 2,'MarkerSize',7,'DisplayName','Cancer');
hold on;
plot(fe2(:,7),'ko','MarkerFaceColor','y','MarkerSize',7,'DisplayName','Non-Cancer');
legend('show')
title ('SHIMMER RELATIVE');
xlabel('No. of Frames') % x-axis label
ylabel('Percentage %') % y-axis label
hold off;

figure;
plot(fe1(:,8),'k+','LineWidth', 2,'MarkerSize',7,'DisplayName','Cancer');
hold on;
plot(fe2(:,8),'ko','MarkerFaceColor','y','MarkerSize',7,'DisplayName','Non-Cancer');
legend('show')
title ('SHIMMER LOCAL ABSOLUTE');
xlabel('No. of Frames') % x-axis label
ylabel('Amplitude') % y-axis label
hold off;

figure;
plot(fe1(:,9),'k+','LineWidth', 2,'MarkerSize',7,'DisplayName','Cancer');
hold on;
plot(fe2(:,9),'ko','MarkerFaceColor','y','MarkerSize',7,'DisplayName','Non-Cancer');
legend('show')
title ('SHIMMER APQ3');
xlabel('No. of Frames') % x-axis label
ylabel('Percentage %') % y-axis label
hold off;

figure;
plot(fe1(:,10),'k+','LineWidth', 2,'MarkerSize',7,'DisplayName','Cancer');
hold on;
plot(fe2(:,10),'ko','MarkerFaceColor','y','MarkerSize',7,'DisplayName','Non-Cancer');
legend('show')
title ('SHIMMER APQ5');
xlabel('No. of Frames') % x-axis label
ylabel('Percentage %') % y-axis label
hold off;

figure;
plot(fe1(:,11),'k+','LineWidth', 2,'MarkerSize',7,'DisplayName','Cancer');
hold on;
plot(fe2(:,11),'ko','MarkerFaceColor','y','MarkerSize',7,'DisplayName','Non-Cancer');
legend('show')
title ('SHIMMER IN dB');
xlabel('No. of Frames') % x-axis label
ylabel('Amplitude in dB') % y-axis label
hold off;