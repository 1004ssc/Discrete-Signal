
%
% Ex1 d) 
addpath .\Lib

n = [-10:9];
x=[5 4 3 2 1];
xtilde=x'*ones(1,4);
xtilde=(xtilde(:))';                      % A(:) : 행렬A를 열벡터로 변환

stem(n,xtilde); title('Sequence in Example 2.1d')
xlabel('n'); ylabel('xtilde(n)'); 
axis([-10,9,-1,6]);