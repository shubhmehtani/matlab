clc;
clear;
a=1;
b=2;
f=@(x)(cos(x)-log(x)+exp(x));
n=input('Enter no. of subintervals: ');
h=(b-a)/n;
sum=0;
for i=1:n-1
    if(rem(i,2)==0)
        sum=sum+4*f(a+h*i);
    else
        sum=sum+2*f(a+h*i);
    end
end
ans=(h/3)*(f(a)+f(b)+sum);
disp(ans)