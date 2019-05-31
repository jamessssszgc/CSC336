R = 0.082054;
a = 3.592;
b = 0.04267;
T = 300;
P = [1 10 100];
for i = 1:3
    p = P(i);
    v_0 = R*T/p;
    func = @(v) (p+a/v^2)*(v-b)-(R*T);
    v_interval = [v_0-1, v_0+1];
    v = fzero(func,v_interval);
    fprintf('%3d  %13e  %13e \n',p,v_0,v);
end
