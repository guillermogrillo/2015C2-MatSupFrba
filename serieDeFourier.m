function serieDeFourier(func, T, armonico)     
	syms t;     
	w = 2*pi/T;     
	n = 1:armonico;     
	a0 = (2/T)*int(func,t, -T/2, T/2);     
	an = (2/T)*int(func*cos(n*w*t),t, -T/2, T/2);     
	bn = (2/T)*int(func*sin(n*w*t),t, -T/2, T/2);     
	f = a0/2 + dot(an,cos(n*w*t)) + dot (bn, sin(n*w*t));     
	ezplot(func)     
	hold on     
	grid on     
	ezplot(f)
end	
