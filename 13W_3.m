clear;
clc;

N = randn(1,100000);
S = 1.8 + N
success = S >= 1.2
success_rate = mean(success)
figure
histogram(S)
xline(1.2)
