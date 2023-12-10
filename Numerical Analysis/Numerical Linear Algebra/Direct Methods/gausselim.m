function [A, b] = gausselim(A, b)
    n = size(A);

    for j = 1:n - 1
        for i = j+1:n
            m(i,j) = A(i, j) / A(j, j);
            for k = j+1:n
                A(i, k) = A(i, k) - m(i,j) * A(j, k);
            end
            b(i) = b(i) - m(i,j) * b(j);
        end
    end
end
