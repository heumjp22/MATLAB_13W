clear;
clc;

scan = 25 + 0.8*randn(10000,30);
mean_scan = mean(scan,2)
event = (mean_scan >= 24.7 & mean_scan <= 25.3);
ratio = mean(event)
figure
histogram(scan(:,1))
hold on
histogram(mean_scan)
