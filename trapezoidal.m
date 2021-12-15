clc;
clear;
a=1;
b=2;
f=@(x)(1/(1+x));
n=input('Enter no. of subintervals: ');
h=(b-a)/n;
sum=0;
for i=1:n-1
    sum=sum+2*f(a+h*i);
end
sum=sum+f(a)+f(b);
ans=(h/2)*(f(a)+sum+f(b));
disp(ans)