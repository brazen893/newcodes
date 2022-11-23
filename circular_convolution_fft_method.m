clc;
clear all;
x1_n = input('Enter the first sequence:');
x2_n = input('Enter the second sequence:');
N1 = length(x1_n);
N2 = length(x2_n);
N = max(N1,N2);
x1_pad = [x1_n zeros(1,6-length(x1_n))]
x2_pad = [x2_n zeros(1,6-length(x2_n))]
y3_n=ifft(fft(x1_pad).*fft(x2_pad));

t1 = 0:N1-1;
subplot(3,1,1);
stem(t1,x1_n);
title('First Input Sequence');
xlabel('Samples(n)');
ylabel('Amplitude');

t2 = 0:N2-1;
subplot(3,1,2);
stem(t2,x2_n);
title('Second Input Sequence');
xlabel('Samples(n)');
ylabel('Amplitude');

t3 = 0:N-1;
subplot(3,1,3);
stem(t3,y3_n);
title('Circular Convolution');
xlabel('Samples(n)');
ylabel('Amplitude');