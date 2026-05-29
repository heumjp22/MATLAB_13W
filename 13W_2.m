clear;
clc;

weights = 100 + 4*randn(10000,20)
mean_weight = mean(weights,2)
fail = (mean_weight<98 | mean_weight>102)
ratio = mean(fail)
figure
histogram(mean_weight)
xline(98)
xline(102)
