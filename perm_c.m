function y = perm_c(q,x)
    y = x;
    for idx = 1:length(q)
        element = q(idx);
        y(idx,:) = x(element,:);
    end
end