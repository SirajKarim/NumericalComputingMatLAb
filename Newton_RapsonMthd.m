x=1;
fprintf('x0 is %f \n',x);
count =0;
func=@(x) x.^2-6;
dfunc=@(x) 2*x;
prev = 0;
for i=1:10
x=x-func(x)/dfunc(x);
count =count+1;
if (prev-x==0)
    break;
end
fprintf('x%d is %f \n',count,x);
prev=x;
end
