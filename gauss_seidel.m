format short
clear all
clc
n=input('Enter number of variables: ');
a=input('Enter diagonal dominant matrix: ');
b=input('Enter discriminant matrix: ');
x=zeros(1,n);
tol=1e-5;
err= Inf;
itr=0;
while all(err>tol)
    x_old=x;
    for i=1:n
        sum=0;
        for j=1:i-1
            sum=sum+a(i,j)*x(j);
        end
        for j=i+1:n
            sum=sum+a(i,j)*x_old(j);
        end
        x(i)=(1/a(i,i))*(b(i)-sum);
    end
    itr=itr+1;
    err=max(abs(x_old-x));
end
fprintf("Method converged in %d iterations", itr);
disp(x)