clear all;
clc;

%mi rut es: 19394171-0
a=1; b=9; c=3; d=9; e=4; f=1; g=7; h=1; i=0;

B = ((a+b)*c)
r = ((i+e)*h)/((b+c+e)*10)
R = ((i+e)*(a+c))/(b+c+e+g+h)

%función exponencial decreciente
n = 0 : 1 : 10; x = B * R .^n;
subplot 331; stem(n, x);
xlabel('n'); title('S. Exponencial Decreciente'); grid

m = 0 : 1 : 10; y = B*(R+2).^ m;

%funcion exponencial creciente

subplot 332; stem(m, y);
xlabel ('m'); title('S. Exponencial creciente'); grid

%Funcion Exponencial Compleja
w = [-30 : 1 : 30]; q = -((b+c+1)/60) + (((a*h*d)+1)/60)*j; z = exp(q * w);
subplot 333; stem(w , real(z)); title('parte real'); xlabel('w')
subplot 334; stem(w , imag(z)); title('parte imag.'); xlabel('w')
subplot 335; stem(w , abs(z)); title('magnitud'); xlabel('w')
subplot 336; stem(w , (180/pi)*angle(z)); title('fase [*]'); xlabel('w')

%funcion sinusoidales
j = [0 :1: 30];
u= 3* cos(2*pi*((2+d+f)/90)* j + pi/3);
subplot 337; stem(j, u);
xlabel('j'); title('S. Sinusoidal'); grid

%función impulso
o=[-b:b];
p=[(o-a)==0];
subplot 338; stem(o, p); title('S. Impulso'); xlabel('o'); grid

%funcion Escalon
s=[-10 : 10]; %Modifique esta seccion debido a que el escalon no se apreciaba bien
K=[(s-a) >=0];
subplot 339; stem(s, K); title('S. Escalon'); xlabel('s'); grid


