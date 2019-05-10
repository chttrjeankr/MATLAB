n = input("Enter n: ");
a = 0
b = 1
for i = 1:n
    c = a + b
    a = b;
    b = c;
end