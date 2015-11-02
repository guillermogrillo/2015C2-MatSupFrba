function [ y ] = FuncionConstante( t, const )

    % Chequea cantidad de parametros y completa con defaults
    if (nargin == 1)
        const = 1;
    end
    
    y = const
    
end

