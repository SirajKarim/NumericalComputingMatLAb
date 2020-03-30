 c = imread('C:\Users\Muhammad\Downloads\sss.jpg');
    message = 'hellokarthick'
    message = strtrim(message);
    m = length(message) * 8;
    AsciiCode = uint8(message); 
    binaryString = transpose(dec2bin(AsciiCode,8));
    binaryString = binaryString(:);
    N = length(binaryString);
    b = zeros(N,1); %b is a vector of bits
    for k = 1:N
        if(binaryString(k) == '1')
            b(k) = 1;
        else
            b(k) = 0;
        end
    end
    s = c;
    height = size(c,1);
    width = size(c,2);
    k = 1;
    for i = 1 : height
        for j = 1 : width
             LSB = mod(double(c(i,j)), 2);
            if (k>m || LSB == b(k))
                s(i,j) = c(i,j);
            else
                if(LSB == 1)
                    s(i,j) = c(i,j) - 1;
                else
                    s(i,j) = c(i,j) + 1;
                end
            k = k + 1;
        end
        end
    end
     imwrite(s, 'hiddenmsgimage.bmp');