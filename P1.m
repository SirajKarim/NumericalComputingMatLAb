% x=input('No 1: ');
% y=input('No 2 ');
% z=x*y;
% res=['Result is = ',num2str(z)];
% disp(res);

% for i=1:10
%     disp('HelloWorld');
% end

% Table of 5
% a=5;
% for i=1:1:10
%     z=i*a;
%     fprintf(' %d x %d = %d \n',a,i,z);
% end


% a=input('Enter Table Do you Want To Print= ');
% l=input('Enter Last Limit= ');
% for i=1:l
%     z=i*a;
%     fprintf(' %d x %d = %d \n',a,i,z);
% end


user = input ('Enter User Name : ','s');
pass = input ('Enter User Password : ','s');

if strcmp(user,'siraj') && strcmp(pass,'pass')
    disp('Access Granted');
else 
    disp('Access Denied');
end

    