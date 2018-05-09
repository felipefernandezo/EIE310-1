load ups.txt; 
x = ups'; 
Nm = 5400; 
Fs = 6400; 
Dt = 1 / Fs; 

n = [0 : 1 : Nm-1];
t = n * Dt; 
subplot 221; plot(t, x)
axis([0 0.1 -10 10]) 
xlabel('t [seg]'); ylabel('Amp'); grid
title('[a] 5 ciclos de la onda original')

x = x - mean(x); 
x = x .* hanning(Nm)';
x = x - mean(x); 

NC = 8192 - 5400; 
z = zeros(1, NC); 
x = [x z]; 
Nf = 8192; 
n = [0 : 1 : Nf-1]; 
t = n * Dt; 
subplot 222; plot(t, x);
axis([0 1.4 -10 10]) 
xlabel('t [seg]'); ylabel('Amp'); grid
title('[b] Secuencia ingresada a la FFT')

X = fft(x); 
M = (2/Nm) * abs(X(1:(Nf)/2)); 
M = M / 0.5; 

k = [0 : 1 : Nf/2-1]; 
f = k / (Nf * Dt); 
subplot 223; semilogy(f, M(k+1)); 
axis([0 2500 0.001 8]); 
xlabel('f [Hz]'); ylabel('Mag'); grid
title('[c] Magnitud del espectro')

subplot 224; semilogy(f, M(k+1)); 
axis([0 260 0.001 8]); 
xlabel('f [Hz]'); ylabel('Mag'); grid
title('[d] Ampliación de gráfico [c]')