clear all
clc
f=@(x,y)x- y^2 +1;
a=0;b=1.4;
x(1)=0;y(1)=1;h=0.1;
n=(b-a)/h;
epsilon=0.00001;
for i=1:n
x(i+1)=x(i)+h;
end
for i=1:n
    y(i+1)=y(i)+h*(f(x(i),y(i)));
    yold=y(i+1);
    
   while(1)
            y(i+1)=y(i)+(h/2)*(f(x(i),y(i))+f(x(i+1),yold));
            
    if(abs(y(i+1)-yold)<epsilon)
        break;
    end
   yold=y(i+1);
   end
end

disp(y)