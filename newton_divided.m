n = input('No of points');
for i=1:n
    x(i)=input('X  values');
    y(i)=input('Y  values');
end
x0 = input("Enter the point at which to evaluate the polynomial, x = ");
for i = 1:n
    D(i,1) = y(i);
end
for j = 2:n
    for i = j:n
        D(i,j) = (D(i,j-1)-D(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
prod = 1;
sum = D(1,1);
for i = 2:n
    prod = prod*(x0-x(i-1));
    sum = sum+prod*D(i,i);
end
disp("Newton divided difference iterated value: ");
disp(sum);