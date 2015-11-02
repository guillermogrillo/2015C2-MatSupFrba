function [ y ] = FuncionRecta( t, a, b ) 
    
    switch nargin
        case 1  
            a = 1;
            b = 0;
        case 2
            b = 0;
    end
    
    y = a * t + b;
    
end

