r = input("rows: ");
c = input("coloumns: ");

a = zeros(r,c);
for i = 1:r
    for j = 1:c
        a(i,j) = input("Enter value: ");
    end
end

b = zeros(c,r);

for i = 1:r
    for j = 1:c
        b(j,i) = a(i,j);
    end
end
a
b
        