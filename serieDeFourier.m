function serieDeFourier(func, T, armonico)     
	syms t;     
	w = 2*pi/T;     
	n = 1:armonico;     
	a0 = (2/T)*int(func,t, -T/2, T/2);     
	an = (2/T)*int(func*cos(n*w*t),t, -T/2, T/2);     
	bn = (2/T)*int(func*sin(n*w*t),t, -T/2, T/2);     
	f = a0/2 + dot(an,cos(n*w*t)) + dot (bn, sin(n*w*t));     
	ezplot(func,[-2*T,2*T])     
	hold on     
	grid on
   % figure (2)
	ezplot(f,[-2*T,2*T])
    grid on
    figure (3)
    plot (n, an,'r--o')
    hold on
    plot (n,bn,'b--o')
    grid on
end