function [ y ] = FuncionConstante( t, T, const)

    % Chequea cantidad de parametros y completa con defaults
    if (nargin == 2)
        const = 1;
    end
    
    y = const * ( heaviside(t) - heaviside(t-T/2) );
    
end

