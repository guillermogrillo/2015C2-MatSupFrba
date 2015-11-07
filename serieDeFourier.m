function serieDeFourier(func, T, offset, armonico)     
	%iniciacion de variables generales
    syms t;     
	w = 2*pi/T; 
    a = 0 - offset * T/2;
    b = T - offset * T/2;
    
	%cálculo y gráfico de la STF para n armonicos dados por el usuario
    n = 1:armonico;     
	a0 = (2/T)*int(func,t, a, b);     
	an = (2/T)*int(func*cos(n*w*t),t, a, b);     
	bn = (2/T)*int(func*sin(n*w*t),t, a, b);     
	f = a0/2 + dot(an,cos(n*w*t)) + dot (bn, sin(n*w*t));     
    graficar1 (func,f,T,n,an,bn);
    
    %cálculo de la STF para cantidad de armonicos tal que el error relativo es menor al 5 porciento
    %primero calculo el n optimo
    noptimo = 1;
    err = errorRelativo(func,T,a,b,noptimo);
    while (err >= 0.05)
        noptimo = noptimo + 1;
        err = errorRelativo(func,T,a,b,noptimo);
    end
    fprintf('Error relativo para %i armonicos:\n', noptimo);
    disp (err);
    %luego, cálculo y gráfico la STF para ese n
    n = 1:noptimo;     
	a0 = (2/T)*int(func,t, a, b);     
	an = (2/T)*int(func*cos(n*w*t),t, a, b);     
	bn = (2/T)*int(func*sin(n*w*t),t, a, b);     
	f = a0/2 + dot(an,cos(n*w*t)) + dot (bn, sin(n*w*t));
    graficar2 (func,f,T);
    
end