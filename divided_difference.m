n = input("Enter no. of known function values: ");
x = zeros(n);
y = zeros(n);
for i = 1:n
    x(i) = input("Enter x:");
    y(i,1) = input("Enter y:");
end
a = input("Value of x for which x is to be found: ");
k = 0;
for j = 2:n
    k=k+1;
    for i = 1:(n-k)
        y(i,j) = (y(i+1,j-1)-y(i,j-1))/(x(i+k)-x(i));
    end
end
for i = 1:n
    disp(x(i))
    for j = 1:(n-i+1)
        disp(y(i,j))
    end
end
s = y(1,1);
for j = 2:n
    p = 1;
    for i = 1:(j-1)
        p = p*(a-x(i));
    end
    s = s + p*y(1,j);
end
s
