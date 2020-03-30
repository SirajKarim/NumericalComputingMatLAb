myFunction = @(x) x.^2-6;
x_lower=0;
x_upper=5;
count=0;
x_mid=(x_lower+x_upper)/2;
fprintf('count|x-lower|x-upper|Mid|fn(Mid)\n');
fprintf('-----|-------|-------|---|-------\n');
while abs(myFunction(x_mid)>0.000001)
    count=count+1;
    fprintf(' %d | %f | %f | %f | %f \n',count,x_lower,x_upper,x_mid,abs(myFunction(x_mid)));
    if(myFunction(x_mid)*myFunction(x_upper))<0
        x_lower=x_mid;
    else
        x_upper=x_mid;
    end
        x_mid=(x_lower+x_upper)/2
    end
    fprintf('The root is the %f\n',x_mid);