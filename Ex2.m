%  2
%
addpath .\lib

n=-2:10;
x=[1:7,6:-1:1];

% a) x1(n) = 2*x(n-5) - 3*x(n+4)
[x11, n11]=sigshift(x, n, 5);
[x12, n12]=sigshift(x, n, -4);

[x1,n1]=sigadd(2*x11, n11, -3*x12, n12);
subplot(2,1,1); stem(n1, x1);

% b) x2(n) = x(3-n) + x(n)*x(n-2)
[x21,n21] = sigfold(x,n); 
[x21,n21] = sigshift(x21,n21,3);

[x22,n22] = sigshift(x,n,2); 
[x22,n22] = sigmult(x,n,x22,n22);

[x2,n2] = sigadd(x21,n21,x22,n22);

subplot(2,1,2); stem(n2,x2); 

%  3번 예제 
%
figure(1); clf

n = [-10:1:10]; a = -0.1+0.3j;
x = exp(a*n);
subplot(2,2,1); stem(n,real(x));
subplot(2,2,2); stem(n,imag(x));
subplot(2,2,3); stem(n,abs(x));
subplot(2,2,4); stem(n,(180/pi)*angle(x));
