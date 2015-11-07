function graficar2(func, f, T)        
    figure(3);
	ezplot(func,[-2*T,2*T])     
	hold on     
	grid on
	ezplot(f,[-2*T,2*T])
    title('Grafico de f(t) y sft(t) para cant. armonicos tal que error relativo es menor a 5%')
    xlabel('t')
    ylabel('f(t) (azul), stf(t) (rojo)')
end