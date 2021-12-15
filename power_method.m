clear all
clc
a=[ 2 -1 0 ; -1 2 -1 ; 0 -1 2 ];
x=[1; 1 ;1];
err= Inf;
tol=1e-2;
itr=0;
while (err>tol)
    x_old=x;
    y=a*x;
    eig_val=max(abs(y));
    eig_vec=y./eig_val;
    x=eig_vec;
    err=abs(sum(x_old-x));
    itr=itr+1;
end
disp(itr-1)
disp(eig_val)
disp(x)