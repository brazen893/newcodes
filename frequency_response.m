clc;
clear all;
b=input("Enter the coefficients of numerator: ");
a=input("Enter the coefficients of denominator: ");
[h,w]=freqz(b,a);
subplot(2,1,1);
plot(w/pi,abs(h));
grid on;
xlabel('Normalized Frequency');
ylabel('Amplitude in db');
title('Magnitude response');

subplot(2,1,2);
plot(w,pi,angle(h));
grid on;
xlabel('Normalized Frequency ');
ylabel('Phase in radians');
title('Phase response');