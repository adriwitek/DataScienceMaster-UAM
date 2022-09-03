run("ejercicio8_base.m")


% ---- Apartado B ------
% Propiedad Conmutativa conv(x,h) = conv(h,x)
b1 = conv(x1, h1);
b2 = conv(h1, x1);
% Rango Salida (de 0 a 0 + 0 + 4+ 9 = 13) (0:13)
%(13+1 = 14 muestras)
n_b = [0:13];

% Representación
subplot(2,1,1);
stem(n_b, b1);
title("B: Señal Convolución x1 - h1");
ylabel("b1");
xlabel("nb, Tiempo Discreto");

subplot(2,1,2);
stem(n_b, b2);
title("B: Señal Convolución h1 - x1");
ylabel("b2");
xlabel("nb, Tiempo Discreto");
%figure;