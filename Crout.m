A = [1 1 1
     1 2 2
     1 2 3];

B = [5
     6
     8];

matrixSize = length(A);
lower = zeros(size(A));
upper = zeros(size(A));
lower(:,1) = A(:,1);
upper(1,:) = A(1,:)/lower(1,1);
upper(1,1) = 1; %set identity matrix

for k = 2:matrixSize;
for j = 2:matrixSize;
    for i = j:matrixSize;
        lower(i,j) = A(i,j)-dot(lower(i,1:j-1),upper(1:j-1,j));
    end
    upper(k,j) = (A(k,j)-dot(lower(k,1:k-1),upper(1:k-1,j)))/lower(k,k);
end
end
lower
upper

%LY = B
Y = zeros(matrixSize,1);
Y(1) = B(1);

for row = 2:matrixSize
    Y(row) = B(row);
    for col = 1: row-1
        Y(row) = Y(row)-lower(row,col)*Y(col);
    end
    Y(row) = Y(row)/lower(row,row);
end
Y

%UX = Y
X = zeros(matrixSize,1);
X(matrixSize) = Y(matrixSize)/upper(matrixSize,matrixSize);
for row = matrixSize-1:-1:1 %second to the last row
    temp = 0;
    for col = matrixSize:-1:1
        temp = temp+upper(row,col)*X(col);
    end
    X(row) = (Y(row)-temp)/upper(row,row);
end
X
