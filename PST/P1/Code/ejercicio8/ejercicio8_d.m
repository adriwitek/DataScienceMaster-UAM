run("ejercicio8_base.m")


% ------ Apartado D -------
% Convolución 1
w = conv(x1, h1);%rango salida de w es [0:13]
y1 = conv(w, h2); %rango de salida de y1 es [0:17]

% Convolución 3
hserie = conv(h1, h2);
y2 = conv(x1, hserie);

% Sacando el valor de las convoluciones para representar el tiempo
% [0:17] tamanio muestra 18
ny1 = [0:17];
ny2 = [0:17];

% Representación
subplot(2,1,1);
stem(ny1, y1);
title("D: Señal Convolución y1");
ylabel("y1");
xlabel("ny1, Tiempo Discreto");

subplot(2,1,2);
stem(ny2, y2);
title("D: Señal Convolución y2");
ylabel("y2");
xlabel("ny2, Tiempo Discreto");
figure;



% Representación de las gráficas intermedias w y hseries
nw = [0:13];
nhseries = [0:8];

% Representación
subplot(2,1,1);
stem(nw, w);
title("D: Señal Convolución intermedia w");
ylabel("w");
xlabel("nw, Tiempo Discreto");

subplot(2,1,2);
stem(nhseries, hserie);
title("D: Señal Convolución intermedia hserie");
ylabel("hseries");
xlabel("nhseries, Tiempo Discreto");
