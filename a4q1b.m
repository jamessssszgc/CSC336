syms f(x)
f(x) = x^2 -2;
x_old = 1;
x = 2;

fprintf('n        x(n)              x(n)- sqrt(2)\n');
fprintf('----------------------------------------\n');
format = '%d    %1.15f  %1.15f\n';
fprintf(format,0,x_old, 1-sqrt(2));
fprintf(format, 1,x, 2-sqrt(2));
for i = 2: 7
    x_new = x - f(x)*((x-x_old)/(f(x)-f(x_old)));
    x_old = x;
    x = x_new;
    r = x_new - sqrt(2);
    fprintf(format, i,x,r);
end