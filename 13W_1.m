clear;
clc;

rng(13);
p = 0.35 + (0.95-0.35)*rand(1,40)

answer = rand(5000,40)<p
total_score = sum(answer,2)
mean_score = mean(total_score)
std_score = std(total_score)
figure
histogram(total_score)
ratio = mean(total_score >= mean_score)
