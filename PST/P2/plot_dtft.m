function plot_dtft(h,N) 
    % h: finite-length input vector, whose length is L
    %       N: number of frequencies for evaluation over [-pi, pi)
    %         ==> constraint: N>=L

[H, W] = dtft(h,N);
fn = W./pi;
modulo_h = abs(H);
angulo_fase = rad2deg(angle(H));


plot(fn, modulo_h)
xlabel('Normalized frequency')
ylabel('|H(w)|')
title('Magnitud Response')
figure;

plot(fn, angulo_fase)
xlabel('Normalized Frequency')
ylabel('Degrees')
title('Phase Response')
figure;