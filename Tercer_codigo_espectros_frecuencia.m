%*************************************************************************%
%       DESCRIPCIÓN: EL SCRIPT REALIZA EL ESPECTRO DE AMPLITUD            %
%                                                                         %
%        ELABORADO POR: TRUJEQUE MATOS FARIDE Y MAY DÍAZ JOAN CARLOS      % 
%                FECHA DE MODIFICACIÓN: NOVIEMBRE 2021                    %
%*************************************************************************%
n=0:1:7; %se colocan los valores de n desde 0 hasta 7
y=zeros(1,8); %indica la cantidad de 0 que hay desde 1 hasta 8
y(1,1)=(pi./2); %se indica el valor que tiene Csubn en esa posición
stem(n,y,'LineWidth',1.5)
y=zeros(1,8);
y(1,2)=(2./pi);
hold on
stem(n,y,'LineWidth',1.5)
y=zeros(1,8);
y(1,3)=(1./(2*pi));
hold on
stem(n,y,'LineWidth',1.5)
y=zeros(1,8);
y(1,4)=(2./(9*pi));
hold on
stem(n,y,'LineWidth',1.5)
y=zeros(1,8);
y(1,5)=(1./(8*pi));
hold on
stem(n,y,'LineWidth',1.5)
y=zeros(1,8);
y(1,6)=(2./(25*pi));
hold on
stem(n,y,'LineWidth',1.5)
y=zeros(1,8);
y(1,7)=(1./(18*pi));
hold on
stem(n,y,'LineWidth',1.5)
y=zeros(1,8);
y(1,8)=(2./(49*pi));
hold on
stem(n,y,'LineWidth',1.5)
title("Espectro de amplitud");
ylabel("|C_{n}|");
xlabel("n");