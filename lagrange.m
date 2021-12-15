format short
clear all
clc
n=input('Enter size of data: ');
x=[110 130 160 190];
y=[10.8 8.1 5.5 4.8];
x0=input('Enter desired value of x: ');
for i=1:n
    l(i)=1;
    for j=1:n
        if(i~=j)
            l(i)=l(i)*((x0-x(j))/(x(i)-x(j)));
        end
    end
end
    sum=0;
    for j=1:n
        sum=sum+(l(j)*y(j));
    end
    disp(sum)