
%Ventana rectangular
L=32;
n = [0:L-1];
x = ones(1,L);

%exponencial desplzzada
w0=2*pi/sqrt(31);
f_expo =  exp(1i*w0*n);



%Calculo de la DFTF
N=1024;
plot_dtft( x .* f_expo , N );