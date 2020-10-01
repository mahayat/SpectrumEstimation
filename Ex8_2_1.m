clear; close all; clc;
rng(100);
sigma2 = 1;
N = 32;
x = randn(1,N);
%%
figure(1);
subplot(311);
stem(0:N-1,x,'k'); grid on;
%%
rx = xcorr(x);
subplot(312);
stem(-(N-1):N-1,rx,'k'); grid on;
%%
Px = my_periodogram(x);
subplot(313);
pi_axis = linspace(-1,1,length(Px));
plot(pi_axis,10*log10(Px),'k'); grid on;
%%
print -dpng Ex8_2_1.png