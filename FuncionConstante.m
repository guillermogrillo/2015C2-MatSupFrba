function [ y ] = FuncionConstante( t, const )

    % Chequea cantidad de parametros y completa con defaults
    if (nargin == 1)
        const = 1;
    end
    
    y = const + t * 0; % multiplicamos t * 0 para quitar el warning y que no modifique la funcion
    
end

