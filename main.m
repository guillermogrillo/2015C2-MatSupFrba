%{
|==================================================
| Configuracion de testeo
|==================================================
%}

clear;
clc;
syms t;

% periodo de la funcion
T = 4;

% funcion elegida
func = FuncionModulo(t,T);

% cantidad de armonicas
armonico = 15;

%{
|==================================================
| Ejecucion (no modificar al testear)
|==================================================
%}

serieDeFourier(func,T,armonico);


