I = imread('D:\BaiduYunDownload\computer vision\lab1\flower.jpg')
subplot(3,4,1)
imshow(I);title('Original');
[r c] = size(I)
for x = 7:-1:0
Bit = bitand(I, 2^x) % x is from 7 to 0
for i = 1:r
       for j = 1:c 
           if Bit(i,j) == 2^x % x is from 7 to 0
              Bit(i,j) = 255;
           else Bit(i,j) = 0;
           end
       end
end
subplot(3,4,12-x)
imshow(Bit);title(['bit ' num2str(x)]);
end