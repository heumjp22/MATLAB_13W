clear;
clc;

r = 0.0008 + 0.015*randn(5000,60)
asset = 100*cumprod(1+r,2)
mean_asset = mean(asset(:,end))
min_asset = min(asset(:,end))
max_asset = max(asset(:,end))
mean(asset(:,end)<100)

idx = randperm(5000,30)
figure
plot(asset(idx,:)')
