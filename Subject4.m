ti=0;tf=10;dt=0.01; t=ti:dt:tf; % ������ �ð��� ����
f0=3; f1=5; A=3; A1=2; % ���ļ� �� �� ���� �� ����
phi=[pi/2 0]; % ������ pi/2
x1=A*sin(2*pi*f0*t+phi(1));
x2=A*cos(2*pi*f1*t+phi(2));
x3=x1+x2;

plot(t,x3,'k');