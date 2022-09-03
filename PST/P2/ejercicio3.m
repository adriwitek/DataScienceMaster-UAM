
N=128;
nn = 0:40; 
a = 0.88 * exp(1i*2*pi/5);
xn = a.^nn;
plot_dtft( xn, N );
