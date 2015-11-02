%{
|==================================================
| Configuracion de testeo
|==================================================
%}

 T = 4;
 syms t;
 func = FuncionConstante(t,T);
 armonico = 5;
 serieDeFourier(func,T,armonico);
%{
|==================================================
| Ejecucion (no modificar al testear)
|==================================================
%}

%clear;
%clc;


