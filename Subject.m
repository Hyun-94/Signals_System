t=[0:0.01:2]; % �ð��� ����(0���� 2���� 0.01. ����)
signal=cos(2*pi*t); % ������ ��ȣ ����
nu=rand(size(signal))-0.5; % ���� ���� ����(���=0, �л� 1/12)����
ng=randn(size(signal)); % ���� ���� ����(���=0, �л�=1)����
mu=sum(nu)/length(t); % ���� ���� ��� ������ ���
mg=sum(ng)/length(t); % ���� ���� ��� ������ ���
vu=sum((nu-mu).^2)/length(t); % ���� ���� ��� ������ �л�
vg=sum((ng-mg).^2)/length(t); % ���� ���� ��� ������ �л�
snr1=10; snr2=20; % ���ϴ� SNR ����
a1=std(signal)/std(ng)/(10^(snr1/20)); % ũ�� a ����(SNR=10[dB] �������)
a2=std(signal)/std(ng)/(10^(snr2/20)); % ũ�� a ���� (SNR=20[dB] �������)
x1=signal+a1*ng; % SNR=10[dB] ��� ������ ���� ��ȣ ����
x2=signal+a2*ng; % SNR=20[dB] ��� ������ ���� ��ȣ ����
fprintf('Uniform Distribution white noise average=%.4f\n',mu); % ���� ���� ��� ������ ��� ���
fprintf('Uniform Distribution white noise variance=%.4f\n',vu); % ���� ���� ��� ������ �л� ���
fprintf('Nomal Distribution white noise average=%.4f\n',mg); % ���� ���� ��� ������ ��� ���
fprintf('Nomal Distribution white noise variance=%.4f\n',vg); % ���� ���� ��� ������ �л� ���
fprintf('SNR=10dB white noise=%.4f\n',a1); % ��� â�� SNR=10[dB] ���� a ǥ��
fprintf('SNR=20dB white noise=%.4f\n',a2); % ��� â�� SNR=20[dB] ���� a ǥ��
subplot(3,2,1); % 3�� 2�� ���� �׸� â�� 1�� â
plot(t,nu); % ���� ���� ��� ���� �׸�
axis([0 2 -1 1]); % x��� y���� �׸� ���� ����
title('Uniform Distribution white noise'); % �׸� ����
subplot(3,2,2); % 3�� 2�� ���� �׸� â�� 2�� â
plot(t,ng); % ���� ���� ��� ���� �׸�
axis([0 2 -2 2]); % x��� y���� �׸� ���� ����
title('Nomal Distribution white noise'); % �׸� ����
subplot(3,2,3); % 3�� 2�� ���� �׸� â�� 3�� â
plot(t,x1); % SNR=10[dB] ��� ������ ���� ��ȣ �׸�
hold on; % ���� �׸�â ����
plot(t,signal,'r'); % ������ ��ȣ �׸�
axis([0 2 -2 2]); % x��� y���� �׸� ���� ����
title('Sinusoidal including SNR=10dB'); % �׸� ����
subplot(3,2,4); % 3�� 2�� ���� �׸� â�� 4�� â
plot(t,x2); % SNR=20[dB] ��� ������ ���� ��ȣ �׸�
hold on; % ���� �׸� â ����
plot(t,signal,'r'); % ������ ��ȣ �׸�
axis([0 2 -2 2]); % x��� y���� �׸� ���� ����
title('Sinusoidal including SNR=20dB'); % �׸� ����

subplot(3,2,5); % 3�� 2�� ���� �׸� â�� 5�� â
plot(t,nu); % ���� ���� ��� ����
axis([0 2 -2 2]);
hold on;
plot(t,ng,'r');
subplot(3,2,6);
plot(t,ng);
axis([0 2 -2 2]);
hold on;
plot(t,nu,'r');

