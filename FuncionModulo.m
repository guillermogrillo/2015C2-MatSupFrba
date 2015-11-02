function [ y ] = FuncionModulo( t, a, b )
    
    switch nargin
        case 1  
            a = 1;
            b = 0;
        case 2
            b = 0;
    end

    y = abs(a * t + b);
    
end

