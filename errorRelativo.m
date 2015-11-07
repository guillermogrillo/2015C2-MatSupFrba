function [err] = errorRelativo(func, T, a, b, armonico)     
	syms t;        
    w = 2*pi/T; 
    n = 1:armonico;     
	a0 = (2/T)*int(func,t, a, b);     
	an = (2/T)*int(func*cos(n*w*t),t, a, b);     
	bn = (2/T)*int(func*sin(n*w*t),t, a, b);     
	fn = a0/2 + dot(an,cos(n*w*t)) + dot (bn, sin(n*w*t)); 
    f1 = abs (func - fn);
    f2 = abs (func);
    err = int(f1,t,a,b)/int(f2,t,a,b);
    err = vpa (err,5);
    disp (err);
end