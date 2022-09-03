run("ejercicio8_base.m")

% ------ Apartado E -------
% Variable númerica
n0 = 2;

% Definición de sistemas
he1 = h1;
%nx_he1 = nh1 = [0:4]
he2 = h1; 
%nx_he1 = nh1 + n0  %adelantamos la señal n0 unidades

% Salidas 
ye1 = conv(x1, he1);
%nx_ye1 = conv([0,9]  ,  [0,4]  )  = [0:13]
nx_ye1 = [0:13];

ye2 = conv(x1, he2); 
%nx_ye2 = conv([0,9] ,  [n0,4+n0]  )  = [n0:9+4+n0]
nx_ye2 = [n0: (13 + n0)];

% Representación
subplot(2,1,1);
stem(nx_ye1, ye1);
title("E: Señal Convolución ye1");
ylabel("ye1");
xlabel(" Tiempo Discreto");

subplot(2,1,2);
stem(nx_ye2, ye2);
title("Señal Convolución ye2");
ylabel("ye2");
xlabel("Tiempo Discreto");
%figure;

