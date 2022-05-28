%*************************************************************************%
%    DESCRIPCIÓN: EL SCRIPT SOBREPONE LAS ONDAS  SINOSOIDALES DE          %              %
%          UNA FUNCIÓN MEDIANTE LAS FORMAS TRIGONOMÉTRICAS                %
%                 Y EXPONENCIAL DE LA SERIE DE FOURIER                    %
%                                                                         %
%        ELABORADO POR: TRUJEQUE MATOS FARIDE Y MAY DÍAZ JOAN CARLOS      % 
%                FECHA DE MODIFICACIÓN: NOVIEMBRE 2021                    %
%*************************************************************************%
clear all
clc
%Primera forma
%Función de f(x)

x= -pi:0.1:pi; %vector de tiempo
p=((x>=-pi)&(x<=0)).*(-x)+((x>0)&(x<=pi)).*(x);%Función periódica
subplot(3,1,1)
plot(x,p,'b','Linewidth',3);
title({'Armónicos sobrepuestos';'Primera forma de la serie trigonométrica de Fourier'});
xlabel("x");
ylabel("f(x)");
hold on
grid on
%Primera forma de la serie trigonométrica de Fourier
armonicos=input('Indique la cantidad de armónicos para la primera forma de la serie de Fourier: ');
sum=(pi./2);
a=(pi./2);
pause on
for n=[1:armonicos]
    f=(((2*((-1).^n)-2)./((n.^2)*pi).*cos(n*x)));
  
    sum=sum+f; %Realiza la sumatoria de los armónicos 
    plot(x,sum); 
    grid on;
    
    pause(0.1)
end
pause off

%Fin

%Segunda forma
% función f(x)
x= -pi:0.1:pi; %vector de tiempo
p=((x>=-pi)&(x<=0)).*(-x)+((x>0)&(x<=pi)).*(x); %Función periódica 
subplot(3,1,2)
plot(x,p,'b','Linewidth',3);
title("Forma armónica de la serie de Fourier");
xlabel("x");
ylabel("f(x)");
hold on
grid on
%forma armónica de la serie de Fourier
armonicos=input('Indique la cantidad de armónicos para la forma armónica de la serie de Fourier: ');
sum=(pi./2);
pause on
for n=[1:armonicos]
   f=(sqrt((2*((-1).^n)-2)./((n.^2)*pi)).^2)*cos(n.*x);
    sum=sum+f; %Realiza la sumatoria de los armonicos 
    plot(x,sum);
    grid on;
    pause(0.1)
end
pause off

%forma compleja de la serie de Fourier
%función f(x)
x= -pi:0.1:pi; %vector de tiempo
p=((x>=-pi)&(x<=0)).*(-x)+((x>0)&(x<=pi)).*(x);
subplot(3,1,3)
plot(x,p,'b','Linewidth',3);
title("Forma compleja de la serie de Fourier");
xlabel("x");
ylabel("f(x)");
hold on
grid on
%serie de fourier
armonicos=input('Indique la cantidad de armónicos para la forma compleja de la serie de Fourier: ');
sum=(pi./2);
a=(pi./2);
pause on
for n=[1:armonicos]
  %i=j
    f=(((-1+((-1).^n))./(pi*n.^2)).*exp(1i*n.*x))+(((-1+((-1).^n))./(pi*n.^2)).*exp(-1i*n.*x));
   
    sum=sum+f; %Realiza la sumatoria de los armónicos 
    
   
plot(x,real(sum));
    grid on;
    hold on
    pause(0.1)
end
pause off
sum=a+sum;
%fin