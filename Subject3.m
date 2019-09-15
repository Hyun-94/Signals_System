  dt=0.01; t=0:dt:10; % 시간축 설정
  x=t.*exp(-3*t); % x(t) 생성
  Ex=quad('int_fctn_1',0,10)
  plot(t,x);