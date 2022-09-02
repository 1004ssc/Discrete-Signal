
%
% Ex1 c) 
addpath .\Lib

n = [0:50];
x = cos(0.04*pi*n)+0.2*randn(size(n));

stem(n,x); title('Sequence in Example 2.1c')
xlabel('n'); ylabel('x(n)'); 