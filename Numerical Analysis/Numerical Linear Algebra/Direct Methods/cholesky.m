function [G, isposdef] = cholesky(A)
    n = size(A, 1);
    G = zeros(n);

    for j = 1:n
        G(j, j) = sqrt(A(j, j));
        for i = j + 1:n
            G(i, j) = A(i, j) / G(j, j);
            for k = j + 1:n
                A(i, k) = A(i, k) - G(i, j) * G(k, j);
            end
        end
    end

    isposdef = all(diag(A) > 0);
end
