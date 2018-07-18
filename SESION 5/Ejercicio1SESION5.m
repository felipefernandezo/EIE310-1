a = [0.05 0.45 0.56 0.44 0.05]; % definición de h(n)
a = a / (sum(a)); % para que H(0) sea = 1
[H, w] = freqz(a, 1);

b = [3.2 0.25 0.4 0.6 0.25];
b = b / (sum(b));;
[H, w] = freqz(b, 1);

n = [0 : 0.1 : 3.9] * pi; X = square(n); % genera onda cuadrada
Y = conv(X, a); % filtra la onda cuadrada


subplot 221; stem(X); title('h1(n) [entrada]');
xlabel('n'); grid
subplot 223; stem(Y); title('h1(n) [salida]');
xlabel('n'); grid

n = [0 : 0.1 : 3.9] * pi; x = square(n); % genera onda cuadrada
y = conv(x, b); % filtra la onda cuadrada
subplot 222; stem(x); title('h2(n) [entrada]');
axis([0 45 -1.5 1.5]); xlabel('n'); grid
subplot 224; stem(y); title('h2(n) [salida]');
axis([0 45 -1.5 1.5]); xlabel('n'); grid