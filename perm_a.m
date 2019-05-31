function y = perm_a(p,x)
    y = x;
    for idx = 1:length(p)
        element = p(idx);
        temp_row = y(idx,:);
        y(idx,:)  = y(element,:);
        y(element,:) = temp_row;
    end
end

