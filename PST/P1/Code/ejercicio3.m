t=[-4:0.125:4];
%t=linspace(-5,5,101);
x_1=sin(pi*t/4);

plot(t,x_1,'r');
hold on;
stem(t,x_1, 'r');

x_2 = cos(pi*t/4)
plot(t, x_2 ,'g');
stem(t,x_2, 'g');


hold off;

legend("sin with plot",'sin with stem',"cos with plot", "cos with ste")
