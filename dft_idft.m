clc;
clear all;
xn = input("Enter the values of x(n) ");
ln = length(xn);
x_k = zeros(1,ln);
ix_k = zeros(1,ln);
for k = 0:ln-1
    for n=0:ln-1
        x_k(k+1) = x_k(k+1) + (xn(n+1)*exp((-i)*2*pi*n*k/ln));
    end
end

t = 0:ln-1
subplot(2,2,1);
stem(t,xn);
grid on;
xlabel("                n ----->");
ylabel("Amplitude");
title("Plot of Input Sequence");

subplot(2,2,2);
stem(t,abs(x_k));
grid on;
xlabel("                  k ------>");
ylabel("Magnitude");
title("Plot of DFT");

subplot(2,2,3);
stem(t,angle(x_k));
grid on;
xlabel("                  k ------>");
ylabel("Phase");
title("Plot of DFT");

for n = 0:ln-1
    for k=0:ln-1
        ix_k(n+1) = ix_k(n+1) + (x_k(k+1)*exp((i)*2*pi*n*k/ln));
    end
end
ix_k = ix_k./ln;
subplot(2,2,4);
stem(t,ix_k);
grid on;
xlabel("                  n ------>");
ylabel("Amplitude");
title("Plot of IDFT");