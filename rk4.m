format short
clc
clear all
h=input('Enter step size: ');
f=@(x,y) x*(y^(1/3));
x=1;
y=1;
itr=0;
x0=input('Enter x at which y is required: ');
while(x0>x)
    k1=h*f(x,y);
    k2=h*f(x+ h/2,y+ k1/2);
    k3=h*f(x+ h/2,y+ k2/2);
    k4=h*f(x+h,y+k3);
    k=(k1+2*k2+2*k3+k4)/6;
    x=x+h;
    y=y+k;
    itr=itr+1;
end
fprintf('Output of y(%f)= %f',x0,y);