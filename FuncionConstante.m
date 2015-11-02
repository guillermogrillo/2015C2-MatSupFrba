function [ y ] = FuncionConstante( t, inf, sup, const )

    % Chequea cantidad de parametros y completa con defaults
    switch nargin
        case 1
            inf = 0;
            sup = 2;
            const = 1;
        case 2
            sup = 2;
            const = 1;
        case 3
            const = 1;
    end
    
    % Suponemos que t esta entre (inf;sup)
    y = const;

    % Si t no esta entre (inf;sup) entonces la funcion vale cero
    if ( t <= inf || t >= sup )
        y = 0;
    end
    
end

