% LABORATÓRIO I - SINAIS E SISTEMAS

%% ETAPA 1
f=@(t) exp(-t).*cos(2*pi*t);
t=0;
f(t)
f(0)
t=-2:2;
f(t)
plot(t,f(t))
xlabel('t');
ylabel('f(t)');grid;
stem(f(t))

%% ETAPA 2
t=-2:0.01:2;
size(t);
plot(t,f(t));
xlabel('t');
ylabel('f(t)');
grid;

%% ETAPA 3
fd=@(n,Ts) exp(-n*Ts).*cos(2*pi*n*Ts);
n=-2:200;
stem(n,fd(n,0.01))

%% ETAPA 4
t = -2:0.01:2;
f = exp(-t).*cos(2*pi*t)
plot(t,f);
clear all

%% ETAPA 5
n=-30:30;
x = cos(n*pi/12+pi/4);
figure(2)
stem(n,x);
xlabel('n');
ylabel('x[n]');
amplitude_1 = 5;
freq_1 = 5;
amplitude_2 = 2;
freq_2 = 50;
Fs = 1000;
time = 0:1/Fs:(1-1/Fs);
sine_1 = amplitude_1*sin(2*pi*freq_1.*time);
sine_2 = amplitude_2*sin(2*pi*freq_2.*time);
noise = randn(1,length(time));
x_clean = sine_1 + sine_2;
x_noisy = x_clean + noise;
figure(14);
plot(time,x_clean);
figure(15);

% %% SINAL ECG
% Name = 'home/daniel.f2005/SIS/aula_2024-09-16/a01m';
% infoName = strcat(Name, '.info'); 
% matName = strcat(Name, '.mat');
% load(matName);
% fid = fopen(infoName, 'rt');
% fgetl(fid);
% fgetl(fid);
% fgetl(fid);
% [freqint] = sscanf(fgetl(fid), 'Sampling frequency: %f Hz Sampling interval: %f sec');
% interval = freqint(2);
% fgetl(fid);
% for i = 1:size(val, 1)
%     [row(i), signal(i), gain(i), base(i), units(i)] = [strread(fgetl(fid),'%d%s%f%f%s','delimiter','\t')]
% end
% fclose(fid);
% val(val==-32768) = NaN;
% 
% %% Normalizacao do sinal pelo ganho
% for i = 1:size(val, 1)
% val(i, :) = (val(i, :) - base(i)) / gain(i);
% end
% 
% %% Plotando sinal original
% fval = 1./size(val, 1);
% tam=length(val)/freqint(1,1);
% t=0:tam/length(val):tam-(tam/length(val));
% figure(17)
% plot(t,val); grid on;
% xlim([0 10])
% title(['Sinal original '])
% ylabel('Amplitude (Volt)')
% xlabel('Tempo (s)')
% plot(time,x_noisy);

%% TAREFAS 
n = -30:30;

figure(16)
stem(n, (-0.5.^(n)));
figure(17)
stem(n, (2.^(-n)));
figure(18)
stem(n, (-2.^(n)));

t = -30:0.01:30;
figure(19)
plot(t, (exp(-2*t)));
clear all

figure(20)
t = -30:0.01:30;
x = 2*cos(2*pi*50*t);
plot(t, x);