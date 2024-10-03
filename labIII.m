% LABORATÓRIO III - DEGRAU E IMPULSO

u = @(t) t >= 0; % definição de um degrau unitário: quando t >= 0 u(t) = 1, quando t < 0 u(t) = 0

%% QUESTÃO I

% definição dos sinais
xa=@(t) u(t-5)-u(t-7);
xb=@(t) u(t-5)+u(t-7);
xc=@(t) (t.^2).*(u(t-1)-u(t-2));
xd=@(t) (t-4).*(u(t-2)-u(t-4));

% definição do intervalo onde aplicado t
t = -10:0.01:20;

% gráficos

% SINAL A
figure(1)
plot(t, xa(t))
title('I - Gráfico do sinal u(t - 5) - u(t - 7)')
axis([0 10 -3 3])

% SINAL B
figure(2)
plot(t, xb(t))
title('I - Gráfico do sinal u(t - 5) + u(t - 7)')
axis([0 10 -3 3])

% SINAL C
figure(3)
plot(t, xc(t))
title('I - Gráfico do sinal t^2(u(t-1)-u(t-2))')
axis([0 10 -5 5])

% SINAL D
figure(4)
plot(t, xd(t))
title('I - Gráfico do sinal (t-4)(u(t-2)-u(t-4))')
axis([0 10 -3 3])

%% QUESTÃO II

% definição do intervalo onde aplicado t
t = -10:0.01:20;

% SINAL A
xa = @(t) (4*t+4).*(u(t+1) - u(t));
xb = @(t) (-2*t+4).*(u(t) - u(t-2));
x1 = @(t) xa(t) + xb(t);
figure(5)
plot(t, xa(t))
title('II - Gráfico do sinal (4t+4)(u(t+1) - u(t))')
axis([-3 3 -5 5])
figure(6)
plot(t, xb(t))
title('II - Gráfico do sinal (-2t+4)(u(t) - u(t-2))')
axis([-3 3 -5 5])
figure(7)
plot(t, x1(t))
title('II - Gráfico do sinal (4t+4)(u(t+1) - u(t)) + (-2t+4)(u(t) - u(t-2))')
axis([-3 3 -5 5])

% SINAL B
xc = @(t) (t.^2).*(u(t) - u(t-2));
xd = @(t) (2*t - 8).*(u(t -2) - u(t - 4));
x2 = @(t) xc(t) + xd(t);
figure(8)
plot(t, xc(t))
title('II - Gráfico do sinal t^2(u(t) - u(t-2))')
axis([-2 5 -4 4])
figure(9)
plot(t, xd(t))
title('II - Gráfico do sinal (2t - 8)(u(t -2) - u(t - 4))')
axis([-2 5 -4 4])
figure(10)
plot(t, x2(t))
title('II - Gráfico do sinal t^2(u(t) - u(t-2)) + (2t - 8)(u(t -2) - u(t - 4))')
axis([-2 5 -4 4])

%% QUESTÃO 5

% definição dos sinais
xa=@(n) u(n-2)-u(n-6);
xb=@(n) n.*(u(n)-u(n-7));
xc=@(n) (n-2).*(u(n-2)-u(n-6));
xd=@(n) (-n+8).*(u(n-6)-u(n-9));
xe=@(n) (n-2).*(u(n-2)-u(n-6))+(-n+8).*(u(n-6)-u(n-9));

% definição do intervalo onde aplicado t
n = -10:20;

% gráficos

% SINAL A
figure(11)
stem(n, xa(n))
axis([-3 8 -2 2])
title('x_a(n)')

% SINAL B
figure(12)
stem(n, xb(n))
axis([-3 8 -2 8])
title('x_b(n)')

% SINAL C
figure(13)
stem(n, xc(n))
axis([-3 10 -2 6])
title('x_c(n)')

% SINAL D
figure(14)
stem(n, xd(n))
axis([-3 10 -6 6])
title('x_d(n)')

% SINAL E
figure(15)
stem(n, xe(n))
axis([-3 10 -6 6])
title('x_e(n)')





