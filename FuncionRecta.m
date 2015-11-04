function [ y ] = FuncionRecta( t, T, a, b ) 
    
    switch nargin
        case 2  
            a = 1;
            b = 0;
        case 3
            b = 0;
    end
    
    y = (a * t + b) * ( heaviside(t) - heaviside(t-T) );
    
end

