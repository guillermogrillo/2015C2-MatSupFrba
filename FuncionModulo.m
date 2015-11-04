function [ y ] = FuncionModulo( t, T, a, b )
    
    switch nargin
        case 2  
            a = 1;
            b = 0;
        case 3
            b = 0;
    end

    y = ( abs(a * t + b) ) * ( heaviside(t+T/2) - heaviside(t-T/2) );
    
end

