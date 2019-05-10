function [Y] = min_max_check(X, thres, big_X)

minm = min(min(X));
maxm = max(max(X));

val = maxm - minm;
lX = length(X);

if lX == 1
    Y = 1;
    return
end

if val > thres && ismember(val,big_X)
    Y = zeros(lX);
    Y(1,1) = lX;
else
    break_matrices(X,lX);
end
    