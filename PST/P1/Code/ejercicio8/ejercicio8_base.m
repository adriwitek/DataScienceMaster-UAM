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