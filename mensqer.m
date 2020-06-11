function [e]= mensqer (x, y)
x = [x, zeros(1, length(y) - length(x))];
D = abs(x-y).^2;
   e = sum(D(:))/numel(x);