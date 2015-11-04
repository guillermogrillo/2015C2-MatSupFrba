%{
|==================================================
| Configuracion de testeo
|==================================================
%}

 T = 4;
 syms t;
 func = FuncionModulo(t,T);
 armonico = 15;
 serieDeFourier(func,T,armonico);
%{
|==================================================
| Ejecucion (no modificar al testear)
|==================================================
%}

%clear;
%clc;


