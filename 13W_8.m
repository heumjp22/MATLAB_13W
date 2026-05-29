clear;
clc;

R = rand(100000,5)
p = [0.72 0.81 0.67 0.9 0.76];
detected = R < p
num_detected = sum(detected,2)
success_ratio = mean(num_detected>=3)
figure
histogram(num_detected)
