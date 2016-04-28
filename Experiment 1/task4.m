I = imread('D:\BaiduYunDownload\computer vision\lab1\lena.jpg')
subplot(1,3,1)
imshow(I)
title('Original Image')
Mask = [0.125 0.125 0.125
0.125 0.125 0.125
0.125 0.125 0.125]
Mean = imfilter(I, Mask)
subplot(1,3,2)
imshow(Mean)
title('Mean Filter')
Mask = [ 0 -1 0
-1 4 -1
0 -1 0]
Laplacian = imfilter(I, Mask)
subplot(1,3,3)
imshow(Laplacian)
title('Laplacian Filter')