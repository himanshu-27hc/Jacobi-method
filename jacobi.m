%% this function could be used to solve system of three linear equation
%  enter the input a matrix for example you have a set of equation like
%  10x+y-z=11.19
%  x+10y+z=28.8
%  x+y+10z=35.61
%  then in put matrix would look like
%  [10 1 -1 11.19;1 10 1 28.8;1 10 1 35.61]
function [x1,y1,z1] = jacobi(M)
if M(1,2)>0 % all if-else statment is for sign checking
    a=-1;   
else
    a=1;
end
    if M(1,3)>0
    b=-1;
else
    b=1;
    end
     if M(2,1)>0
    c=-1;
else
    c=1;
     end
    if M(2,3)>0
        d=-1;
    else
        d=1;
    end
     if M(3,1)>0
        e=-1;
    else
        e=1;
     end
     if M(3,2)>0
        f=-1;
    else
        f=1;
    end
x0=input('enter the initial guess:');%here we are giving initial guess
y0=input('enter the initial guess:');
z0=input('enter the initial guess:');
for v=1:50 % iterrating for 50 times
    x1=(1/M(1,1))*(M(1,end)+(a*y0)+(b*z0));%here we are calculating next 
    y1=(1/M(2,2))*(M(2,end)+(c*x0)+(d*z0));%iteration
    z1=(1/M(3,3))*(M(3,end)+(e*x0)+(f*y0));
 x0=x1;y0=y1;z0=z1;
end

