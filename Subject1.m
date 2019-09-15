ti=0;tf=10;dt=0.01; t=ti:dt:tf; % 파형의 시간축 설정
f0=3; A=3; % 주파수 값 및 진폭 값 설정
phi=[pi/2]; % 위상이 pi/2
x1=A*sin(2*pi*f0*t+phi(1));
plot(t,x1,'k');