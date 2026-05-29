clear;
clc;

arrival_interval = exprnd(8,1,300)
arrival_time = cumsum(arrival_interval)
treat_time = 10 + 3*randn(1,300);
treat_time(treat_time<0) = 1;
treat_time
start_time = zeros(1,300);
finish_time = zeros(1,300);

start_time(1) = arrival_time(1);
finish_time(1) = start_time(1) + treat_time(1);

for i =2:300
    start_time(i) = max(arrival_time(i),finish_time(i-1));
    finish_time(i) = start_time(i) + treat_time(i);
end

wait_time = start_time - arrival_time
mean_wait = mean(wait_time)
max_wait = max(wait_time)
ratio_wait = mean(wait_time>20)
figure
histogram(wait_time)
