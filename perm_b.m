function q = perm_b(p)
    q = [1:length(p)+1];
    for idx = 1:length(p)
        element = p(idx);
        swap = q(element);
        q(element) = q(idx);
        q(idx) = swap;
    end
end