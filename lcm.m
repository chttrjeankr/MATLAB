a = input("Input a:");
b = input("Input b:");
i = max(a,b);
while true
    if rem(i,a) == 0 & rem(i,b) == 0
        i
        break
    else
        i = i + 1;
        continue
    end
end