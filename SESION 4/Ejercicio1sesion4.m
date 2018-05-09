% Lee h(n)
load h.txt
% Grafica h(n)
subplot 221;
plot(h, '.'); grid
xlabel('n');
title('h(n)');
% Calcula Mag[H(f)]
f = 0 : 100 : 250000;
M = abs(freqz(h,1,f,101000));
% Grafica Mag[H(f)]
subplot 222;
semilogy(f/500, M); grid;
axis([0 220 0.000001 10]);
xlabel('f[kHz]');
title('Mag[H(f)]');

