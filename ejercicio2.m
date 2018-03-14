%Respuesta escalon filtro IIR
%y(n)=0.1 x(n)+0.9 y(n-1)
vi=1;% voltaje de entrada
a=0.9;%Constante del filtro
dt=10e-3;%1/100 Hz=10 m seg
t(1)=0;%indice 1 => t=0
vf(1)=0;%indice 1 => t=0
for i=2:41;
    t(i)=(i-1)* dt;
    vf(i)=(1-a)* vi+a * vf(i-1);
end
close; stem(t, vf);%gráfico
xlabel('seg'); grid