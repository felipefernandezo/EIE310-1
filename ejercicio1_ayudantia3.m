[x, n] = impulso(0, -5, 5);
w = [0 : 0.01 : 1] * pi;
[X] = dtft(x, n, w);
plot(w/pi, abs(X));
xlabel('w / Pi [rad/m]');
title('DTFT de un impulso unitario'); grid