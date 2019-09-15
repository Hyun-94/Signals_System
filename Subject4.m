ti=0;tf=10;dt=0.01; t=ti:dt:tf; % 파형의 시간축 설정
f0=3; f1=5; A=3; A1=2; % 주파수 값 및 진폭 값 설정
phi=[pi/2 0]; % 위상이 pi/2
x1=A*sin(2*pi*f0*t+phi(1));
x2=A*cos(2*pi*f1*t+phi(2));
x3=x1+x2;

plot(t,x3,'k');