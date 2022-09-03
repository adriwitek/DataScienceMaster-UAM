run("ejercicio8_base.m")


% Representaciones
subplot(3, 1, 1);
stem(nx1, x1);
% Opciones del plot
title("A: Señal X1");
ylabel("x1");
xlabel("nx1, Tiempo Discreto");

subplot(3, 1, 2);
stem(nh1, h1);
% Opciones del plot
title("A: Señal H1");
ylabel("h1");
xlabel("nh1, Tiempo Discreto");

subplot(3, 1, 3);
stem(nh2, h2);
% Opciones del plot
title("A: Señal H2");
ylabel("h2");
xlabel("nh2, Tiempo Discreto");
