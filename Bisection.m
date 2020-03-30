my_fun=@(x)x.^2-6;
low=0;
up=5;
tol=0.000001;
it_count=1;
mid=(low+up)/2;
fn_mid = my_fun(mid);
fprintf('Count| Low          | High          | Mid           | f(Mid)  \n' );
fprintf(' %d   | %f     | %f      | %f      | %f       \n',it_count,low,up,mid,fn_mid);
%for x=1:10
while (abs(up - low) >= tol)
mid=(low+up)/2;
res = my_fun(mid);
if res < 0
    low=mid;
else
    up=mid;
end
it_count= it_count+1;
fprintf(' %d   | %f     | %f      | %f      | %f       \n',it_count,low,up,mid,fn_mid);
end
fprintf('The root is %f\n',mid);