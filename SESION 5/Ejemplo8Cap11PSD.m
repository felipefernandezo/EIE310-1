mr = audioread('mr.wav'); Fs = 11025;
M = 8192; % tamaño del segmento
T = 0.75 * M; % traslapo
pwelch(mr, hamming(M), T, 4*M, Fs); zoom