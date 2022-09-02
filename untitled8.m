%신승철  1번문제
addpath .\lib
n=[-2:10];
x=[1:7,6:-1:1];

x11=2*sigshift(x,n,5)
x12=-3*sigshift(x,n,-4);
  %여기세 시그 쉬프트                         

  %그 다음에 쉬프트 애드
x1=sigadd(x11,n,x12,n);

x3=sigfold(x,n);
x21=sigshift(x3,n,3)

x4=sigshift(x,n,2);
x22=sigmult(x,n,x4,n)

   
x2=sigadd(x21,n,x22,n);
   
%그래프 그리기
subplot(2,1,1)
hold on
stem(x1,n)

subplot(2,1,2)
hold on
stem(x2,n)
