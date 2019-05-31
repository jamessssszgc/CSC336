x = 1;
n = 0;
fprintf('n        x(n)              x(n)- sqrt(2)\n');
format = '%d    %1.15f  %1.15f\n';
while n <= 5    
    f = x^2 - 2;
    deriv = 2*x;
    x_new = x - (f/deriv);
    x = x_new;
    r = x - sqrt(2);
    fprintf(format, n,x,r);
    n = n + 1;
end