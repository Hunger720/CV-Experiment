I = imread('D:\BaiduYunDownload\computer vision\lab1\lena_color.jpg')
subplot(2,3,1);imshow(I);title('Color Image');
G = rgb2gray(I)
subplot(2,3,2);imshow(G);title('Gray Image');
bw = im2bw(I)
subplot(2,3,3);imshow(bw);title('Binary Image');
R = I
R(:,:,2) = 0
R(:,:,3) = 0
subplot(2,3,4);imshow(R);title('Red Component');
G = I
G(:,:,1) = 0
G(:,:,3) = 0
subplot(2,3,5);imshow(G);title('Green Component');
B = I
B(:,:,1) = 0
B(:,:,2) = 0
subplot(2,3,6);imshow(B);title('Blue Component');