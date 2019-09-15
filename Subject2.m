ti=0; tf=10; dt=0.01; t=ti:dt:tf; % 파형의 시간축 설정
f0=5; A=2; % 주파수 값 및 진폭 값 설정
phi=[0];
x1=A*cos(2*pi*f0*t+phi(1)); % 위상이 0인 정현파 생성
plot(t,x1,'k'); % 정현파 x1을 그림 창에 그림
axis([ti tf -1.2*A 1.2*A]); % x축 y축의 영역 설정