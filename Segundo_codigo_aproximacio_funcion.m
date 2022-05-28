%*************************************************************************%
% DESCRIPCIÓN: EL SCRIPT REALIZA LA APROXIMACIÓN DE UNA FUNCIÓN MEDIANTE  %
%      LAS FORMAS TRIGONOMÉTRICAS Y EXPONENCIAL DE LA SERIE DE FOURIER    %
%                                                                         %
%        ELABORADO POR: TRUJEQUE MATOS FARIDE Y MAY DÍAZ JOAN CARLOS      % 
%                FECHA DE MODIFICACIÓN: NOVIEMBRE 2021                    %
%*************************************************************************%
clear all
clc
%Primera forma
%Función de f(x)
x= -pi:0.1:pi; %vector de tiempo
p=((x>=-pi)&(x<=0)).*(-x)+((x>0)&(x<=pi)).*(x);
subplot(3,1,1)
plot(x,p,'k','Linewidth',3); 
title('Primera forma de la serie trigonométrica de Fourier');
xlabel("x");
ylabel("f(x)");
hold on
grid on
%Primera forma de la serie trigonométrica de Fourier
armonicos=input('Indique la cantidad de armónicos para la primera forma de la serie de Fourier: ');
s=0;
a=(pi./2);
for n=1:armonicos
   f=(((2*((-1).^n)-2)./((n.^2)*pi).*cos(n*x)));
    s=s+f;
end
s=a+s;
plot(x,s,'c','Linewidth',1);
%Fin

%Segunda forma
%Función de f(x)
x= -pi:0.1:pi; %vector de tiempo
p=((x>=-pi)&(x<=0)).*(-x)+((x>0)&(x<=pi)).*(x);
subplot(3,1,2)
plot(x,p,'k','Linewidth',3);
title("Forma armónica de la serie de Fourier");
xlabel("x");
ylabel("f(x)");
hold on
grid on
%Segunda forma de la serie trigonométrica de Fourier
armonicos=input('Indique la cantidad de armónicos para la forma armónica de la serie de Fourier: ');
s=0;
a=(pi./2);
for n=1:armonicos
   f=(sqrt((2*((-1).^n)-2)./((n.^2)*pi)).^2)*cos(n.*x);
    s=s+f;
end
s=a+s;
plot(x,s,'c','Linewidth',1);
%Fin

%Tercera forma
%Función de f(x)
x= -pi:0.1:pi; %vector de tiempo
p=((x>=-pi)&(x<=0)).*(-x)+((x>0)&(x<=pi)).*(x);
subplot(3,1,3)
plot(x,p,'k','Linewidth',3);
title("Forma compleja de la serie de Fourier");
xlabel("x");
ylabel("f(x)");
hold on
grid on
%Tercera forma de la serie trigonométrica de Fourier
armonicos=input('Indique la cantidad de armónicos para la forma compleja de la serie de Fourier: ');
s=0;
a=(pi./2);
for n=1:armonicos
   f=(((-1+((-1).^n))./(pi*n.^2)).*exp(1i*n.*x))+(((-1+((-1).^n))./(pi*n.^2)).*exp(-1i*n.*x));
    s=s+f;
end
s=a+s;
plot(x,s,'c','Linewidth',1);
%Fin

