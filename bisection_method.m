a = input("Enter a: ");
b = input("Enter b: ");
e = input("Enter error value: ");

if f(a) > 0 && f(b) < 0
    w = a;
    a = b;
    b = w;
end

while true
    c = (a+b) / 2;
    
    if abs(f(c)) < e
        break
    end
    if f(c) < 0
        a = c;
    else
        b = c;
    end
end

sprintf("Root is :%f",c)

function res = f(x)
    res = (x^2) - (5*x) + 6;
end