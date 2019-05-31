g{1} = @(x)(x^2+2)/3;
g{2} = @(x)sqrt(3*x-2);
g{3} = @(x)(3-2/x);
g{4} = @(x)(x^2-2)/(2*x-3);
tol = eps;
max = 8;
x_0 =2;
for i = 1:4
    n = 0;
    x = 2.2;
    err = abs(x-x_0);
    fprintf('n     x        err     convergence rate\n');
    while err >tol && n < max
        n = n + 1;
        x = g{i}(x);
        new_err = abs(x-x_0);
        rate = new_err/err;
        err = new_err;
        fprintf('%d  %f  %f    %f\n',n,x,err,rate);
    end
    fprintf('-------------------------------\n');
end
