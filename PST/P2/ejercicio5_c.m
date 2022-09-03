N = 1024;

%ventana hanning
w = hann(32)';
plot_dtft(w, N);

%ventana rectangular
n = 0:31;
x = [ones(1, 32)];
plot_dtft(x, N);

%Vemos cual es la mejor ventana para la exponencial compleja
%del ejercicio anterior
plot_dtft(w.*exp(1i*w0*n), N);
plot_dtft(x.*exp(1i*w0*n), N);
