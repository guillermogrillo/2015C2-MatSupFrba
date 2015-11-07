function graficar1(func, f, T, n, an, bn)              
	ezplot(func,[-2*T,2*T])     
	hold on     
	grid on
	ezplot(f,[-2*T,2*T])
    title('Grafico de f(t) y stf(t) para cant. armonicos definido por usuario')
    xlabel('t')
    ylabel('f(t) (azul), stf(t) (rojo)')
    figure (2)
    plot (n, an,'r--o')
    hold on
    plot (n,bn,'b--o')
    grid on
    title('Grafico de coeficientes')
    xlabel('n')
    ylabel('An(rojo), Bn(azul)')
end