clear;
clc;

orders = poissrnd(180,1,365)
service_time = zeros(size(orders));
for i=1:length(orders)
t = 6 + 2*randn(1,orders(i));
t(t<0) = 0;
service_time(i) = sum(t);
end
ratio = mean(service_time>1200)
figure
plot(orders)
figure
plot(service_time)
figure
scatter(orders,service_time)
