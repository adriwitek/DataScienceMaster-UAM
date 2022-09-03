% Señales
x_1 = [1,1,1,1,1];
h_1 = [1,-1,3];
h_2 = [2,5,4,-1];

% Vectores de tiempo discreto; eje x
nx1 = [0:9];
nh1 = [0:4];
nh2 = nh1;

% Ajustes para las señales en los Tiempos
x1 = [x_1 zeros(1,5)];
h1 = [h_1 zeros(1,2)];
h2 = [0 h_2];

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
figure;

% ---- Apartado B ------
% Propiedad Conmutativa (x,h) = (h,x)
b1 = conv(x1, h1);
b2 = conv(h1, x1);
% Rango Salida
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
figure;

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
figure;

% ------ Apartado D -------
% Convolución 1
w = conv(x1, h1);
y1 = conv(w, h2);

% Convolución 3
hserie = conv(h1, h2);
y2 = conv(x1, hserie);

% Sacando el valor de las convoluciones para representar el tiempo
%% No se hasta que punto va de 0 a 18 o simplemente mide 18
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

% ------ Apartado E -------
% Variable númerica
n0 = 2;

% Definición de sistemas
he1 = h1;
he2 = h1 - n0;

% Salidas 
%% No me queda claro si: "salida" = "op. convolución"
ye1 = conv(x1, he1);
ye2 = conv(x1, he2); 

% Representación
%% Las dos gráficas dan diferente, se hará teóricamente para chekearlo
subplot(2,1,1);
stem(n_b, ye1-n0);
title("E: Señal Convolución ye1");
ylabel("ye1[n-n0]");
xlabel("n_b, Tiempo Discreto");

subplot(2,1,2);
stem(n_b, ye2);
title("Señal Convolución ye2");
ylabel("ye2");
xlabel("n_b, Tiempo Discreto");
%figure;

% ------ Apartado F -------
% Sistema 1 sin memoria: y[n] = (n+1)x[n]
nw = nx1;
% Wf = salida Sistema 1 para entrada x1
wf = (nw+1).*x1;
hf2 = h1;

% yf1 - salida Sistema 2 
yf1 = conv(wf, hf2);
% Representación Yf1
subplot(2,1,1);
stem(n_b, yf1);
title("F: Señal Salida yf1");
ylabel("yf1");
xlabel("n_b, Tiempo Discreto");

% hf1 Salida sistema 1 para: - entrada impulso unidad [0:4].
impulso_unidad = [1, 0, 0, 0, 0];
%% No me queda muy claro lo de la salida
hf1 = conv(impulso_unidad, wf);

% hseries = conv(hf1,hf2) 
hseries = conv(hf1, hf2);

% yf2: Entrada salida de hseries con entrada x1.
n_f2 = [0:26];
yf2 = conv(x1, hseries);
% Representación Yf2
subplot(2,1,2);
stem(n_f2, yf2);
title("F: Señal Salida yf1");
ylabel("yf2");
xlabel("n_f2, Tiempo Discreto");

% ------ Apartado G -------
% Sistema 1 sin memoria y[n] = x^2[n]
% Sistema 2 LTI con impulso hg2[n] = h2[n]
hg2 = h2;

% yga - Salida sistema 1 - Entrada = xg[n] = impulso unidad *2
xg = impulso_unidad*2;
yga = xg.^2;

% ygb - Salida sistema 2 - Entrada xg[n]
ygb = conv(xg, hg2);

% yg1 = suma  yga[n] + ygb[n]
% Es necesario extender la longitud de yga para que sea igual a la de ygb
yga = [yga, zeros(1, 4)];
yg1 = yga + ygb;

% hg1[n] = salida sistema uno para impulso unidad
hg1 = impulso_unidad.^2; % Estoo.. Tiene sentido??

% hparallel[n] =  hg1[n]+hg2[n]. 
hparallel = hg1 + hg2;

% yg2[n] = salida sistema hparallel[n] con entrada xg[n]
yg2 = conv(xg, hparallel);
