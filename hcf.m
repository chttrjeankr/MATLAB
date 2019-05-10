a = input("Input a:");
b = input("Input b:");
i = min(a,b);
while i >= 1
    if rem(a,i) == 0 & rem(b,i) == 0
        i
        break
    else
        i = i - 1;
        continue
    end
end