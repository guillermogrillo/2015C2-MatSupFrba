%{
|==================================================
| Configuracion de testeo
|==================================================
%}

clear;
clc;

%declaro var. independiente
syms t;

% elegir periodo de la funcion
T = 4;

% elegir modelo, entre opciones:
% FuncionConstante(t, T, const) -> f(t) = const si (0<t<T/2) , 0 si (T/2<t<T) ; offset = 0
% FuncionRecta(t, T, a, b) -> f(t) = a*x + b si (0<t<T) ; offset = 0
% FuncionModulo(t, T, a, b) -> f(t) = -(a*x + b) si (-T/2<t<0) , a*x + b si (0<t<T/2) ; offset = 1
func = FuncionConstante(t,T);
offset = 0;

% cantidad de armonicas a representar
armonico = 7;


%{
|==================================================
| Ejecucion (no modificar al testear)
|==================================================
%}

serieDeFourier(func,T,offset,armonico);




