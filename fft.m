 clc;
clear all;
xn = input("Enter the discrete sequence:");
N = length(xn);
x_k = fft(xn,N);
x_n = ifft(x_k);

n=0:N-1;
subplot(2,2,1);
stem(n,xn);
grid on;
xlabel("n-------->");
ylabel("Input");
title("Input Sequence");
subplot(2,2,2);
stem(n,abs(x_k));
grid on;
xlabel("k---------->");
ylabel("Magnitude");
title("FFT");
subplot(2,2,3);
stem(n,angle(x_k));
grid on;
xlabel("k--------->");
ylabel("Phase");
title("FFT");

subplot(2,2,4);
stem(n,x_n);
grid on;
xlabel("n------->");
ylabel("Amplitude");
title("IFFT");
