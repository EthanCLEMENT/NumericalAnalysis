function LU = LUdecomposition(A)
    n = length(A);
    LU = A;
    for i = 1:1:n
        for j = 1:(i - 1)
            LU(i,j) = (LU(i,j) - LU(i,1:(j - 1))*LU(1:(j - 1),j)) / LU(j,j);
        end
        j = i:n;
        LU(i,j) = LU(i,j) - LU(i,1:(i - 1))*LU(1:(i - 1),j);
    end
    %LU = L+U-I
end

function x = SolveLinearSystem(LU, B)
    n = length(LU);
    y = zeros(size(B));
    % find solution of Ly = B
    for i = 1:n
        y(i,:) = B(i,:) - LU(i,1:i)*y(1:i,:);
    end
    % find solution of Ux = y
    x = zeros(size(B));
    for i = n:(-1):1
        x(i,:) = (y(i,:) - LU(i,(i + 1):n)*x((i + 1):n,:))/LU(i, i);
    end    
end