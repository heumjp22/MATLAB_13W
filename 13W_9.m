clear;
clc;

stage1 = rand(50000,1) < 0.94;
stage2 = rand(sum(stage1),1) < 0.91;
stage3 = rand(sum(stage2),1) < 0.88;
final_ratio = sum(stage3)/50000

num1 = 50000 - sum(stage1);
num2 = sum(stage1) - sum(stage2);
num3 = sum(stage2) - sum(stage3);
num_pass = sum(stage3);
result = [num1 num2 num3 num_pass];
figure
bar(result)
