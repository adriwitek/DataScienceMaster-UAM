run("ejercicio8_base.m")

% ------ Apartado G -------
% Sistema 1 sin memoria y[n] = x^2[n]
% Sistema 2 LTI con impulso hg2[n] = h2[n]
hg2 = h2;

% yga - Salida sistema 1 - Entrada = xg[n] = impulso unidad *2
impulso_unidad = [1, 0, 0, 0, 0];
xg = impulso_unidad .* 2;
yga = xg.^2;
n_xg = [0:4]; 
subplot(1,1,1);
stem(n_xg, yga)
title("F: Señal Salida yga");
ylabel("yga");
xlabel("Tiempo Discreto");
figure;



% ygb - Salida sistema 2 - Entrada xg[n]
ygb = conv(xg, hg2);
%n_ygb = conv([0:4] , [0:4] = [0:8]) 
n_ygb = [0:8];
subplot(1,1,1);
stem(n_ygb, ygb)
title("F: Señal Salida ygb");
ylabel("ygb");
xlabel("Tiempo Discreto");
figure;



yg1 = [yga, zeros(1, 4)] + ygb;
subplot(1,1,1);
stem([0:8], yg1)
title("F: Señal Salida yg1");
ylabel("yg1");
xlabel("Tiempo Discreto");
figure;



hg1 = impulso_unidad.^2;
subplot(1,1,1);
stem([0:4], hg1)
title("F: Señal Salida hg1");
ylabel("hg1");
xlabel("Tiempo Discreto");
figure;



% hparallel[n] =  hg1[n]+hg2[n]. 
hparallel = hg1 + hg2;
subplot(1,1,1);
stem([0:4], hparallel)
title("F: Señal Salida hparallel");
ylabel("hparallel");
xlabel("Tiempo Discreto");
figure;


yg2 = conv(xg,hparallel);
%n_yg2 = conv([0:4], [0:4]) = [0:8]
n_yg2 = [0:8];
subplot(1,1,1);
stem(n_yg2, yg2)
title("F: Señal Salida yg2");
ylabel("yg2");
xlabel("Tiempo Discreto");
