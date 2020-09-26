function Px = my_periodogram(x,length_of_Px)
x = x(:);
if nargin == 1
    length_of_Px = 1024;
Px = (abs(fftshift(fft(x,length_of_Px))).^2)/length(x);
end