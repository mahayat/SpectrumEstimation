clear; close all; clc;
rng(1971);
A = 5;
w0 = 0.4*pi;
N = 64;
sigma2 = 1;
%%
figure(1);
all_Px = [];
for i=1:N
    phi = 2*pi*(rand(1)-0.5);
    x = A*sin((1:N)*w0+phi)+randn(1,N);
    Px = my_periodogram(x);
    all_Px = [all_Px Px];
    plot(linspace(-1,1,length(Px)),10*log10(Px),'k'); hold on;
end
grid on;
xlim([0 1]);
avg_Px = sum(all_Px,2)/N;
plot(linspace(-1,1,length(Px)),10*log10(avg_Px),'r'); hold on;
%%