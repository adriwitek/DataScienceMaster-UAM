L=21;
N=128;

%x[n] en frecuencia
x = ones(1,L);
n = -10:10;
[H_x,W_x] = dtft( x, N );
plot_dtft( x, N );

%exponencial desplzzada
w0=2*pi/sqrt(31);
coseno =  cos(w0*n);

%multicamos elem. a elem. x en frec con exp . desplazada
plot_dtft( x.* coseno , N );
