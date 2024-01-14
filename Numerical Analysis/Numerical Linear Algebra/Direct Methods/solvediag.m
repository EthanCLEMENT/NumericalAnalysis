function x = solvediag(A,b)
    n = size(A);

    for i = 1:n
        m(i) = b(i)/A(i,i);
    end
    disp('Values of m:');
    disp(m);
end