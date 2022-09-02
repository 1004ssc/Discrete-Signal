% Example 3 
%
figure(1); clf

n = [-10:1:10]; a = -0.1+0.3j;
x = exp(a*n);
subplot(2,2,1); stem(n,real(x));
subplot(2,2,2); stem(n,imag(x));
subplot(2,2,3); stem(n,abs(x));
subplot(2,2,4); stem(n,(180/pi)*angle(x));
