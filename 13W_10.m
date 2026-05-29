clear;
clc;

change = 35*randn(1,10000);
condition = rand(1,10000)<0.12;

power = 500+ change;
power(condition) = power(condition) + 120;
ratio = mean(power>650)
figure
histogram(power)
mean_over = mean(power(condition))
mean_normal = mean(power(~condition))
