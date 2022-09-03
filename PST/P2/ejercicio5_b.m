%% Apartado b

N = 1024;
L1 = 32;
L2 = 64;
L3 = 128;
L4 = 256;


w0 = 2*pi/sqrt(31);
w1 = [ones(1, L1)];
w2 = [ones(1, L2)];
w3 = [ones(1, L3)];
w4 = [ones(1, L4)];

%Calculamos primeros las DTFT de las ventanas rectangulares
%A la derecha, la función exponencial compleja del ej.anterior * ventana
%   rectangular

% LONGITUD 32
%DTFT
[H, W] = dtft(w1, N);
mod = abs(H);
norm_freq = W ./ pi;
subplot(4,2,1);
plot(norm_freq, mod);
title('Magnitude Response');
ylabel('|H(w)|, L=32');

%f_exp * w1
L = [0:(L1 -1)];
x = exp(1i * w0 * L);
[H, W] = dtft(x.*w1, N);
mod = abs(H);
norm_freq = W ./ pi;
subplot(4,2,2);
plot(norm_freq, mod);
title('Magnitude Response');
ylabel('|H(w)X(w)|');

% LONGITUD 64
%DTFT
[H, W] = dtft(w2, N);
mod = abs(H);
norm_freq = W ./ pi;
subplot(4,2,3);
plot(norm_freq, mod);
ylabel('|H(w)|, L=64');

%f_exp * w2
L = [0:(L2 -1)];
x = exp(1i * w0 * L);
[H, W] = dtft(x.*w2, N);
mod = abs(H);
norm_freq = W ./ pi;
subplot(4,2,4);
plot(norm_freq, mod);
ylabel('|H(w)X(w)|');

% LONGITUD 128
%DTFT
[H, W] = dtft(w3, N);
mod = abs(H);
norm_freq = W ./ pi;
subplot(4,2,5);
plot(norm_freq, mod);
ylabel('|H(w)|, L=128');

%f_exp * w3
L = [0:(L3 -1)];
x = exp(1i * w0 * L);
[H, W] = dtft(x.*w3, N);
mod = abs(H);
norm_freq = W ./ pi;
subplot(4,2,6);
plot(norm_freq, mod);
ylabel('|H(w)X(w)|');

% LONGITUD 256
%DTFT
[H, W] = dtft(w4, N);
mod = abs(H);
norm_freq = W ./ pi;
subplot(4,2,7);
plot(norm_freq, mod);
xlabel('Normalized Frequency') ;
ylabel('|H(w)|. L=256');

%f_exp * w4
L = [0:(L4 -1)];
x = exp(1i * w0 * L);
[H, W] = dtft(x.*w4, N);
mod = abs(H);
norm_freq = W ./ pi;
subplot(4,2,8);
plot(norm_freq, mod);
xlabel('Normalized Frequency') ;
ylabel('|H(w)X(w)|');
