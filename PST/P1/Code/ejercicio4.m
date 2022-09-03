n = [0:32];
x = exp(j*(pi/8)*n);

stem(n,real(x));
hold on
stem(n,imag(x));
stem(n,abs(x));
stem(n,angle(x));
legend('imag', 'real', 'abs', 'angle')
hold off
