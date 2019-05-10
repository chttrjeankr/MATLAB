global big_X;
global thres;
big_X = round(rand(8),2);
thres = 0.5;
disp(big_X)
[UL,UR,LL,LR] = break_matrices(big_X,8);
res = [UL UR; LL LR];
disp(res)

function [ul, ur, ll, lr] = break_matrices(X, dim)

mid = dim / 2;
%big_X
ul = min_max_check(X((1:mid),(1:mid)));
ur = min_max_check(X((1:mid),(mid+1:dim)));
ll = min_max_check(X((mid+1:dim),(1:mid)));
lr = min_max_check(X((mid+1:dim),(mid+1:dim)));

end

function [Y] = min_max_check(X)

global thres
global big_X

minm = min(min(X));
maxm = max(max(X));

val = maxm - minm;
lX = length(X);

if ((val > thres) && ismember(val,big_X)) || lX == 1
    Y = zeros(lX);
    Y(1,1) = lX;
    return
else
    [ul, ur, ll, lr] = break_matrices(X,lX);
    Y = [ul ur; ll lr];
    return
end

end
