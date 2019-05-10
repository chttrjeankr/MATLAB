function [ul, ur, ll, lr] = break_matrices(X, dim)

mid = dim / 2;
big_X
ul = X((1:mid),(1:mid));
ur = X((1:mid),(mid+1:dim));
ll = X((mid+1:dim),(1:mid));
lr = X((mid+1:dim),(mid+1:dim));