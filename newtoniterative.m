
fuc = @(x)x.^x+5*x+cos(x)-9;
primefuc=@(x)x.^x*(log(x)+1)+5-sin(x);
 x=1; count=1;
prev=0;
fprintf('Count -- X \n');
while (x-prev) ~= 0
    prev=x;
    fprintf('%d -- %f \n',count,x)
    x= x-fuc(x)/primefuc(x);
    count = count+1;
end