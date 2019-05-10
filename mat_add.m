m = input("Input m:");
n = input("Input n:");
a = zeros(m,n);
b = zeros(m,n);
c = zeros(m,n);
for i = 1:m
    for j = 1:n
        a(i,j) = input("Enter element of A: ");
    end
end
for i = 1:m
    for j = 1:n
        b(i,j) = input("Enter element of B: ");
    end
end
for i = 1:m
    for j = 1:n
        c(i,j) = a(i,j) + b(i,j);
    end
end
c