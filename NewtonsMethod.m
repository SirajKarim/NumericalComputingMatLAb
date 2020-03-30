x=1;
fprintf('x0 is %f \n',x);
count=0;
fuc = @(x)x.^2-6;
primfuc = @(x)2*x;
prev=0;
for i = 1:10
x=x-fuc(x)/primfuc(x);
count = count + 1;
if (prev-x == 0)
break;
end
fprintf('x%d is %f \n',count,x);
prev=x;
end
