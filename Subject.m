t=[0:0.01:2]; % 시간축 설정(0에서 2까지 0.01. 간격)
signal=cos(2*pi*t); % 정현파 신호 생성
nu=rand(size(signal))-0.5; % 균일 분포 잡음(평균=0, 분산 1/12)생성
ng=randn(size(signal)); % 정규 분포 잡음(평균=0, 분산=1)생성
mu=sum(nu)/length(t); % 균일 분포 백색 잡음의 평균
mg=sum(ng)/length(t); % 정규 분포 백색 잡음의 평균
vu=sum((nu-mu).^2)/length(t); % 균일 분포 백색 잡음의 분산
vg=sum((ng-mg).^2)/length(t); % 정규 분포 백색 잡음의 분산
snr1=10; snr2=20; % 원하는 SNR 설정
a1=std(signal)/std(ng)/(10^(snr1/20)); % 크기 a 결정(SNR=10[dB] 백색잡음)
a2=std(signal)/std(ng)/(10^(snr2/20)); % 크기 a 결정 (SNR=20[dB] 백색잡음)
x1=signal+a1*ng; % SNR=10[dB] 백색 잡음이 섞인 신호 생성
x2=signal+a2*ng; % SNR=20[dB] 백색 잡음이 섞인 신호 생성
fprintf('Uniform Distribution white noise average=%.4f\n',mu); % 균일 분포 백색 잡음의 평균 출력
fprintf('Uniform Distribution white noise variance=%.4f\n',vu); % 균일 분포 백색 잡음의 분산 출력
fprintf('Nomal Distribution white noise average=%.4f\n',mg); % 정규 분포 백색 잡음의 평균 출력
fprintf('Nomal Distribution white noise variance=%.4f\n',vg); % 정규 분포 백색 잡음의 분산 출력
fprintf('SNR=10dB white noise=%.4f\n',a1); % 명령 창에 SNR=10[dB] 잡음 a 표시
fprintf('SNR=20dB white noise=%.4f\n',a2); % 명령 창에 SNR=20[dB] 잡음 a 표시
subplot(3,2,1); % 3행 2열 분할 그림 창의 1번 창
plot(t,nu); % 균일 분포 백색 잡음 그림
axis([0 2 -1 1]); % x축과 y축의 그림 영역 지정
title('Uniform Distribution white noise'); % 그림 제목
subplot(3,2,2); % 3행 2열 분할 그림 창의 2번 창
plot(t,ng); % 정규 분포 백색 잡음 그림
axis([0 2 -2 2]); % x축과 y축의 그림 영역 지정
title('Nomal Distribution white noise'); % 그림 제목
subplot(3,2,3); % 3행 2열 분할 그림 창의 3번 창
plot(t,x1); % SNR=10[dB] 백색 잡음이 섞인 신호 그림
hold on; % 현재 그림창 유지
plot(t,signal,'r'); % 정현파 신호 그림
axis([0 2 -2 2]); % x축과 y축의 그림 영역 지정
title('Sinusoidal including SNR=10dB'); % 그림 제목
subplot(3,2,4); % 3행 2열 분할 그림 창의 4번 창
plot(t,x2); % SNR=20[dB] 백색 잡음이 섞인 신호 그림
hold on; % 현재 그림 창 유지
plot(t,signal,'r'); % 정현파 신호 그림
axis([0 2 -2 2]); % x축과 y축의 그림 영역 지정
title('Sinusoidal including SNR=20dB'); % 그림 제목

subplot(3,2,5); % 3행 2열 분할 그림 창의 5번 창
plot(t,nu); % 균일 분포 백색 잡음
axis([0 2 -2 2]);
hold on;
plot(t,ng,'r');
subplot(3,2,6);
plot(t,ng);
axis([0 2 -2 2]);
hold on;
plot(t,nu,'r');

