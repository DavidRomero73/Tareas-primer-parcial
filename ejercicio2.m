input('Ejercicio 2, metodo punto fijo\n');
fx=X.^3-X-1
x=-3:1:3;
gx=input('Ingrese el despeje de la funcion\n','s');
i=input('ingrese el numero de iteraciones\n');
xi=input('Introduzca el punto inicial\n');
g=inline(gx);
f=inline(fx);
y=f(x);
plot(x,y,'r+-');
[x',y']
fprintf('n\t\txi\t\tf(xi)\t\tg(xi)\t\tEr\n')
for j=1:i
    fxi=f(xi);
    gxi=g(xi);
    er=abs((xi-gxi)*100);
    fprintf('%d\t\t%.2f\t  %.2f\t\t  %.2f\t\t  %.2f\n',j,xi,fxi,gxi,er)
    xi=gxi;
end

