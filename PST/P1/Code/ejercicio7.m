nx = [-3:11];
% Damos valores en nx = [0:4]
x_1 = [2 0 1 -1 3];
x = [zeros(1,3) x_1 zeros(1,7)];
stem(nx,x)
xlabel('Tiempo(Discreto)')
ylabel('Valor')
title('Señal Discreta X[n]')
figure

%Definimos las señales adicionales
y1 = x;
y2 = x;
y3 = x;
y4 = x;

%Transformamos los vectores índice
% Y ploteamos

ny1 = nx +2;
subplot(2,2,1);
stem(ny1,y1)
xlabel('ny1')
ylabel('y1')
title('x retrasada 2')

ny2 = nx -1;
subplot(2,2,2)
stem(ny2,y2)
xlabel('ny2')
ylabel('y2')
title('x adelantada 1')


ny3 = nx *(-1);
subplot(2,2,3)
stem(ny3,y3)
xlabel('ny3')
ylabel('y3')
title('x invertida')

%ny4_1 = nx + 1;
%ny4 = ny4_1  *(-1);
ny4_1 = nx  *(-1);
ny4 = ny4_1 + 1;
subplot(2,2,4)
stem(ny4,y4)
xlabel('ny4')
ylabel('y4')
title('x invertida y luego adelantada 1 ó x retrasada 1 y luego invertida ')
