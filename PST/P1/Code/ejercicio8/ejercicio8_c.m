run("ejercicio8_base.m")


% ---- Apartado C ------
% Propiedad Distributiva (Paralelo h1, h2) = (Serie h1 + h2)
% Definición Sistema en Paralelo
c_p1 = conv(x1, h1);
c_p2 = conv(x1, h2);
c_p_conv = c_p1 + c_p2;

% Definición Sistema en Serie
c_s = h1 + h2;
c_s_conv = conv(x1, c_s);

% Representación
subplot(2,1,1);
stem(n_b, c_p_conv);
title("C: Señal Convolución en Parelelo");
ylabel("c_p2");
xlabel("nb - Tiempo Discreto");

subplot(2,1,2);
stem(n_b, c_s_conv);
title("C: Señal Convolución en Serie");
ylabel("c_s");
xlabel("nb - Tiempo Discreto");
%figure;