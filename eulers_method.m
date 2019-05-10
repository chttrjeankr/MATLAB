x = input("Enter x:");
y = input("Enter y:");
a = input("Enter a:");
n = input("Enter no. of steps n:");

h = (a-x)/n;
sprintf('%d %d',x,y);

count = 1;
while count < n
    y = y + h*f(x,y);
    x = x + h;
    sprintf('%d %d',x,y);
    count = count + 1;
end


function res = f(x,y)
    res = (y-x)/(y+x);
end

