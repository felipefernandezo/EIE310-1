x = audioread('psr-0950-08.wav');
Fs = 8000;

T = 1 / Fs;
t = T * [1 : length(x)];
subplot 221; plot(t, x); xlim([0 30]); grid
xlabel('t [seg]'); title('Señal pulsar')

x = x - mean(x); 
M = 4096; 
T = M/2; 
[P, f] = pwelch(x, hamming(M), T, M, Fs);

subplot 222; plot(f, P); grid
xlabel('f [Hz]'); title('PSD señal')

m = abs(x); 
load h20.txt 

e = conv(m, h20); 
e = e(1:100:length(e)); 
e = e - mean(e); 
Fs = 80; 

T = 1 / Fs;
t = T * [1 : length(e)];
subplot 223; plot(t, e); xlim([0 30]); grid
xlabel('t [seg]'); title('Envolvente')

M = 2048; 
T = M/2; 
[P, f] = pwelch(e, hamming(M), T, M, Fs);

subplot 224; plot(f, P); grid
xlabel('f [Hz]'); title('PSD envolvente')
