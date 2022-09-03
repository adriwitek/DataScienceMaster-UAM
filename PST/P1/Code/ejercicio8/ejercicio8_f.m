run("ejercicio8_base.m")


n_b = [0:13];

% ------ Apartado F -------


% Sistema 1 sin memoria: y[n] = (n+1)x[n]
nw = nx1;
% Wf = salida Sistema 1 para entrada x1
wf = (nw+1).*x1;
% Representación wf = w[n]
subplot(1,1,1);
stem(nw, wf);
title("F: Señal Salida w[n]");
ylabel("w[n]");
xlabel("wf, Tiempo Discreto");
figure;



%Respuesta impulso del Sistema 2
hf2 = h1;
% yf1 = salida Sistema 2 =  conv([0:4] , [0:9]) = [0:13]
yf1 = conv(wf, hf2);
% Representación Yf1
subplot(1,1,1);
stem(n_b, yf1);
title("F: Señal Salida yf1");
ylabel("yf1");
xlabel("n_b = [0:13], Tiempo Discreto");
figure;


% hf1 Salida sistema 1 para:  entrada impulso unidad [0:4].
impulso_unidad = [1, 0, 0, 0, 0];
n_hf1 = [0:4];
hf1 =  (n_hf1+1).*impulso_unidad;
% Representación hf1
subplot(1,1,1);
stem(n_hf1,hf1)
title("F: Señal Salida hf1");
ylabel("hf1");
xlabel("Tiempo Discreto");





hseries = conv(hf1, hf2);
%n_hserires = conv([0:4],  [0:4]    ) = [0:8]
n_hseries = [0:8];
subplot(1,1,1);
stem(n_hseries,hseries)
title("F: Señal Salida hseries");
ylabel("hseries");
xlabel("Tiempo Discreto");


n_yf2 = [0:9];
yf2 = [hseries 0 ] .* x1;
subplot(1,1,1);
stem(n_yf2,yf2)
title("F: Señal Salida yf2");
ylabel("yf2");
xlabel("Tiempo Discreto");
