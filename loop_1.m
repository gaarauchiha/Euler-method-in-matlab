n = 10;
x = zeros(1, n);
sum = 0;
for i = 1 : n
x(i) = i^2;
sum = sum + x(i);
end
sum