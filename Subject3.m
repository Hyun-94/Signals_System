  dt=0.01; t=0:dt:10; % �ð��� ����
  x=t.*exp(-3*t); % x(t) ����
  Ex=quad('int_fctn_1',0,10)
  plot(t,x);