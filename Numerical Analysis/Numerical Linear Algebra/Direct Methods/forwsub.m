function y = forwsub(L, b)
    n = length(b);  
    y = zeros(size(b));

    for i = 1:n
        y(i) = b(i);
        for j = 1:i-1
            y(i) = y(i) - L(i, j) * y(j);
        end
    end

    disp(y);
end
