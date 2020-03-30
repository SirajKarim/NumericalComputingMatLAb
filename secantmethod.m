
clc; clear;
maxiter = 100; % max number of iteration before get the answer
f = @(x)(3*x+sin(x)+x.^2);
xn_2 = 0;
xn_1 = 1;
maxerr = 0.000001;
xn = (xn_2*f(xn_1) - xn_1*f(xn_2))/(f(xn_1) - f(xn_2));
disp('xn-2              f(xn-2)                 xn-1              f(xn-1)               xn              f(xn)');
disp(num2str([xn_2 f(xn_2) xn_1 f(xn_1) xn f(xn)],'%20.6f'));
flag = 1; 
while abs(f(xn)) > maxerr
    xn_2 = xn_1;       
    xn_1 = xn;
    xn = (xn_2*f(xn_1) - xn_1*f(xn_2))/(f(xn_1) - f(xn_2));
    
    disp(num2str([xn_2 f(xn_2) xn_1 f(xn_1) xn f(xn)],'%20.6f'));
    
    flag = flag + 1;
    if(flag == maxiter)
        break;
    end
end
fprintf('No of Iteration = %d \n',flag);
if flag < maxiter
    fprintf('Root is x = %f \n',xn);
else
    disp('Root does not exist'); 
end