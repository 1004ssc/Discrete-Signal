
% Example 4
% x(n) = u(n)-u(n-10);

addpath .\Lib

n = [-2:10];
x = stepseq(0,-2,10)-stepseq(10,-2,10);
[xe,xo,m] = evenodd(x,n);

subplot(1,1,1)
subplot(2,2,1); stem(n,x); 
subplot(2,2,2); stem(m,xe); 
subplot(2,2,4); stem(m,xo);