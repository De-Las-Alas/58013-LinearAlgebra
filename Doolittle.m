A = [1 1 1
     1 2 2
     1 2 3];

B = [5
     6
     8];

matrixSize = length(A);
lower = eye(matrixSize);
upper = zeros(size(A));

upper(1,:) = A(1,:);
lower(2:end,1) = A(2:end,1) / upper(1,1);

for k = 2:matrixSize
    upper(k,k:end) = A(k,k:end) - lower(k,1:k-1) * upper(1:k-1, k:end);
    lower(k+1:end,k) = (A(k+1:end,k) - lower(k+1:end,1:k-1) * upper(1:k-1,k)) / upper(k,k);
end

upper
lower

% Forward Substitution: LY = B
Y = zeros(matrixSize,1);
Y(1) = B(1);

for row = 2:matrixSize
    Y(row) = B(row) - lower(row,1:row-1) * Y(1:row-1);
end

Y

% Back Substitution: UX = Y
X = zeros(matrixSize, 1);
X(matrixSize) = Y(matrixSize) / upper(matrixSize,matrixSize);

for row = matrixSize-1:-1:1
    X(row) = (Y(row) - upper(row,row+1:end) * X(row+1:end)) / upper(row,row);
end

X