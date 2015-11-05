%{
|==================================================
| Configuracion de testeo
|==================================================
%}

clear;
clc;
syms t;

% periodo de la funcion
T = 2;

% funcion elegida
func = FuncionConstante(t,T);

% cantidad de armonicas
armonico = 5;

%{
|==================================================
| Ejecucion (no modificar al testear)
|==================================================
%}
%3er parametro: '0' para recta
%               '1' para modulo
%                indistinto para constante
serieDeFourier(func,T,1,armonico);


