function [L, D] = ldlt(A)
    n = size(A, 1);
    L = zeros(n);
    D = zeros(n, n);

    for j = 1:n
        v = zeros(j-1, 1); 
        for k = 1:j-1
            v(k) = D(k, k) * L(j, k);
        end

        u = A(j:n, j);
        for k = 1:j-1
            u = u - L(j:n, k) * v(k);
        end

        d = u(1);  
        L(j:n, j) = u / d;
        D(j, j) = d;
    end
end
