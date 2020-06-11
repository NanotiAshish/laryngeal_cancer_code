function plotfeature(fe1,fe2)
figure; 
plot((zscore(fe1(:,1))), (zscore(fe1(:,2))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,1))), (zscore(fe2(:,2))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('No. of Pitch Periods') % x-axis label
ylabel('Jitter Local') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,1))), (zscore(fe1(:,3))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,1))), (zscore(fe2(:,3))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('No. of Pitch Periods') % x-axis label
ylabel('Jitter Local Absolute') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,1))), (zscore(fe1(:,4))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,1))), (zscore(fe2(:,4))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('No. of Pitch Periods') % x-axis label
ylabel('Jitter RAP') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,1))), (zscore(fe1(:,5))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,1))), (zscore(fe2(:,5))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('No. of Pitch Periods') % x-axis label
ylabel('Jitter PPQ') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,1))), (zscore(fe1(:,6))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,1))), (zscore(fe2(:,6))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('No. of Pitch Periods') % x-axis label
ylabel('Jitter in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,1))), (zscore(fe1(:,7))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,1))), (zscore(fe2(:,7))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('No. of Pitch Periods') % x-axis label
ylabel('Shimmer Relative') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,1))), (zscore(fe1(:,8))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,1))), (zscore(fe2(:,8))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('No. of Pitch Periods') % x-axis label
ylabel('Shimmer Local Absolute') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,1))), (zscore(fe1(:,9))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,1))), (zscore(fe2(:,9))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('No. of Pitch Periods') % x-axis label
ylabel('Shimmer APQ3') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,1))), (zscore(fe1(:,10))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,1))), (zscore(fe2(:,10))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('No. of Pitch Periods') % x-axis label
ylabel('Shimmer APQ5') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,1))), (zscore(fe1(:,11))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,1))), (zscore(fe2(:,11))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('No. of Pitch Periods') % x-axis label
ylabel('Shimmer in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,2))), (zscore(fe1(:,3))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,2))), (zscore(fe2(:,3))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local') % x-axis label
ylabel('Jitter Local Absolute') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,2))), (zscore(fe1(:,4))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,2))), (zscore(fe2(:,4))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local') % x-axis label
ylabel('Jitter RAP') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,2))), (zscore(fe1(:,5))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,2))), (zscore(fe2(:,5))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local') % x-axis label
ylabel('Jitter PPQ') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,2))), (zscore(fe1(:,6))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,2))), (zscore(fe2(:,6))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local') % x-axis label
ylabel('Jitter in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,2))), (zscore(fe1(:,7))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,2))), (zscore(fe2(:,7))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local') % x-axis label
ylabel('Shimmer Relative') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,2))), (zscore(fe1(:,8))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,2))), (zscore(fe2(:,8))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local') % x-axis label
ylabel('Shimmer Local Absolute') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,2))), (zscore(fe1(:,9))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,2))), (zscore(fe2(:,9))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local') % x-axis label
ylabel('Shimmer APQ3') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,2))), (zscore(fe1(:,10))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,2))), (zscore(fe2(:,10))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local') % x-axis label
ylabel('Shimmer APQ5') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,2))), (zscore(fe1(:,11))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,2))), (zscore(fe2(:,11))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local') % x-axis label
ylabel('Shimmer in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,3))), (zscore(fe1(:,4))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,3))), (zscore(fe2(:,4))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local Absolute') % x-axis label
ylabel('Jitter RAP') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,3))), (zscore(fe1(:,5))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,3))), (zscore(fe2(:,5))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local Absolute') % x-axis label
ylabel('Jitter PPQ') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,3))), (zscore(fe1(:,6))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,3))), (zscore(fe2(:,6))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local Absolute') % x-axis label
ylabel('Jitter ib dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,3))), (zscore(fe1(:,7))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,3))), (zscore(fe2(:,7))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local Absolute') % x-axis label
ylabel('Shimmer Relative') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,3))), (zscore(fe1(:,8))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,3))), (zscore(fe2(:,8))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local Absolute') % x-axis label
ylabel('Shimmer Local Absolute') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,3))), (zscore(fe1(:,9))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,3))), (zscore(fe2(:,9))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local Absolute') % x-axis label
ylabel('Shimmer APQ3') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,3))), (zscore(fe1(:,10))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,3))), (zscore(fe2(:,10))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local Absolute') % x-axis label
ylabel('Shimmer APQ5') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,3))), (zscore(fe1(:,11))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,3))), (zscore(fe2(:,11))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter Local Absolute') % x-axis label
ylabel('Shimmer in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,4))), (zscore(fe1(:,5))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,4))), (zscore(fe2(:,5))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter RAP') % x-axis label
ylabel('Jitter PPQ') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,4))), (zscore(fe1(:,6))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,4))), (zscore(fe2(:,6))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter RAP') % x-axis label
ylabel('Jitter in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,4))), (zscore(fe1(:,7))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,4))), (zscore(fe2(:,7))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter RAP') % x-axis label
ylabel('Shimmer Relative') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,4))), (zscore(fe1(:,8))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,4))), (zscore(fe2(:,8))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter RAP') % x-axis label
ylabel('Shimmer Local Absolute') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,4))), (zscore(fe1(:,9))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,4))), (zscore(fe2(:,9))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter RAP') % x-axis label
ylabel('Shimmer APQ3') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,4))), (zscore(fe1(:,10))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,4))), (zscore(fe2(:,10))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter RAP') % x-axis label
ylabel('Shimmer APQ5') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,4))), (zscore(fe1(:,11))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,4))), (zscore(fe2(:,11))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter RAP') % x-axis label
ylabel('Shimmer in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,5))), (zscore(fe1(:,6))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,5))), (zscore(fe2(:,6))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter PPQ') % x-axis label
ylabel('Jitter in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,5))), (zscore(fe1(:,7))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,5))), (zscore(fe2(:,7))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter PPQ') % x-axis label
ylabel('Shimmer Relative') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,5))), (zscore(fe1(:,8))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,5))), (zscore(fe2(:,8))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter PPQ') % x-axis label
ylabel('Shimmer Local Absolute') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,5))), (zscore(fe1(:,9))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,5))), (zscore(fe2(:,9))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter PPQ') % x-axis label
ylabel('Shimmer APQ3') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,5))), (zscore(fe1(:,10))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,5))), (zscore(fe2(:,10))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter PPQ') % x-axis label
ylabel('Shimmer APQ5') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,5))), (zscore(fe1(:,11))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,5))), (zscore(fe2(:,11))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter PPQ') % x-axis label
ylabel('Shimmer in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,6))), (zscore(fe1(:,7))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,6))), (zscore(fe2(:,7))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter ib dB') % x-axis label
ylabel('Shimmer Relative') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,6))), (zscore(fe1(:,8))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,6))), (zscore(fe2(:,8))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter ib dB') % x-axis label
ylabel('Shimmer Local Absolute') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,6))), (zscore(fe1(:,9))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,6))), (zscore(fe2(:,9))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter ib dB') % x-axis label
ylabel('Shimmer APQ3') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,6))), (zscore(fe1(:,10))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,6))), (zscore(fe2(:,10))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter ib dB') % x-axis label
ylabel('Shimmer APQ5') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,6))), (zscore(fe1(:,11))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,6))), (zscore(fe2(:,11))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Jitter ib dB') % x-axis label
ylabel('Shimmer in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,7))), (zscore(fe1(:,8))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,7))), (zscore(fe2(:,8))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Shimmer Relative') % x-axis label
ylabel('Shimmer Local Absolute') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,7))), (zscore(fe1(:,9))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,7))), (zscore(fe2(:,9))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Shimmer Relative') % x-axis label
ylabel('Shimmer APQ3') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,7))), (zscore(fe1(:,10))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,7))), (zscore(fe2(:,10))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Shimmer Relative') % x-axis label
ylabel('Shimmer APQ5') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,7))), (zscore(fe1(:,11))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,7))), (zscore(fe2(:,11))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Shimmer Relative') % x-axis label
ylabel('Shimmer in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,8))), (zscore(fe1(:,9))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,8))), (zscore(fe2(:,9))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Shimmer Local Absolute') % x-axis label
ylabel('Shimmer APQ3') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,8))), (zscore(fe1(:,10))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,8))), (zscore(fe2(:,10))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Shimmer Local Absolute') % x-axis label
ylabel('Shimmer APQ5') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,8))), (zscore(fe1(:,11))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,8))), (zscore(fe2(:,11))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Shimmer Local Absolute') % x-axis label
ylabel('Shimmer in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,9))), (zscore(fe1(:,10))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,9))), (zscore(fe2(:,10))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Shimmer APQ3') % x-axis label
ylabel('Shimmer APQ5') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,9))), (zscore(fe1(:,11))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,9))), (zscore(fe2(:,11))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Shimmer APQ3') % x-axis label
ylabel('Shimmer in dB') % y-axis label
hold off;

figure; 
plot((zscore(fe1(:,10))), (zscore(fe1(:,11))), 'k+','LineWidth', 2, 'MarkerSize', 7,'DisplayName','Cancer');
hold on;
plot((zscore(fe2(:,10))), (zscore(fe2(:,11))), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7,'DisplayName','Non-Cancer');
legend('show')
% title ('NO OF PITCH PERIODS');
xlabel('Shimmer APQ5') % x-axis label
ylabel('Shimmer in dB') % y-axis label
hold off;
