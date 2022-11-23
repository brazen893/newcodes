n = -10:10;
xn = [n==0];
subplot(3,2,1);
stem(n,xn);
grid on;
xlabel("n");
ylabel("Amplitude");
title("Plot of impulse signal");
xn1 = [n>=0];
subplot(3,2,2);
stem(n,xn1);
grid on;
xlabel('n');
ylabel('Amplitude');
title('Plot of step signal');
xn2=n.*[n>=0];
subplot(3,2,3);
stem(n,xn2);
grid on;
xlabel('n');
ylabel('Amplitude');
title('Plot of ramp signal');
xn3=0.8.^n.^[n>=0];
subplot(n,xn3);
grid on;
xlabel('n');
ylabel('Amplitude');
title('Plot of exponential signal');
xn4=0.2*sin(2*pi*n);
subplot(3,2,5);
stem(n,xn4);
grid on;
xlabel('n');
ylabel('Amplitude');
title('Plot of sine signal');