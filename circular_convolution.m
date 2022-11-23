clc;
clear all;
x1 = input('Enter the first sequence:');
x2 = input('Enter the second sequence:');
N1 = length(x1);
N2 = length(x2);
N = max(N1,N2);

if(N2>N1)
    x4 = [x1,zeros(1,N-N1)];
    x5 = x2;
elseif(N2==N1)
    x4 = x1;
    x5 = x2;
else
    x4 = x1;
    x5 = [x2,zeros(1,N-N2)];
end

y=cconv(x1,x2,N);

subplot(3,1,1);
t1 = 0:N1-1;
stem(t1,x1);
title('First Input Sequence');
xlabel('Samples');
ylabel('Amplitude');

subplot(3,1,2);
t2 = 0:N2-1;
stem(t2,x2);
title('Second Input Sequence');
xlabel('Samples');
ylabel('Amplitude');

subplot(3,1,3);
t3 = 0:N-1;
stem(t3,y);
title('Circular Convolution');
xlabel('Samples');
ylabel('Amplitude');