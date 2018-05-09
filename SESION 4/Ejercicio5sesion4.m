x = audioread('carot.wav');
Fs = 22050; 
soundsc(x, Fs)

t = (1:length(x)) * 1/Fs;
subplot 211; plot(t, x);
xlabel('seg.'); ylabel('Señal'); grid;

LS = 1024; 
[B, f, t] = specgram(x, 4*LS, Fs, hamming(LS), round(0.75*LS));
subplot 212; imagesc(t, f, abs(B))
axis xy, colormap(1-gray) 
brighten(-0.8); 
xlabel('t [seg]'); ylabel('f [Hz]'); grid; zoom
