clc
clear all
h=input('Enter step size: ');
f=@(x,y)(y-x)/(y+x);
x=0;
y=1;
itr=0;
x0=input('Enter x at which y is required: ');
while(x0>=x)
    fxy=f(x,y);
    newY=y+h*fxy;
    x=x+h;
    itr=itr+1;
    y_last=y;
    y=newY;
end
fprintf('Output of y(%f)= %f',x0,y_last);