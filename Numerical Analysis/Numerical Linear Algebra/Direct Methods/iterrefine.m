function x = iterrefine(A, b, TOL)
    x_approx = zeros(size(b));  
    r = b;

    for k = 1:TOL
        e_approx = A \ r;
        x_approx = x_approx + e_approx;
        r = b - A * x_approx;

        if norm(r) < TOL
            break;
        end
    end

    x = x_approx;
end
