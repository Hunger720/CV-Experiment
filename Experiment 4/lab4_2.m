function lab4_2

img = imread('D:\用户目录\我的文档\SCUT\First Year\Second Semester\Courses\Computer Vision\Experiment\Experiment 4\lab4\lena.jpg');

img_gray = rgb2gray(img);
subplot(4,3,1), imshow(img_gray);
img_fft = fft2(img_gray);
img_fft_shift = fftshift(img_fft);
subplot(4,3,2), imshow(mat2gray(log(abs(img_fft_shift))));
subplot(4,3,3), imshow(mat2gray(angle(img_fft_shift)));


K = 100;
img_cshift = circshift(img_gray, K);
subplot(4,3,4), imshow(img_cshift);
img_fft = fft2(img_cshift);
img_fft_shift = fftshift(img_fft);
subplot(4,3,5), imshow(mat2gray(log(abs(img_fft_shift))));
subplot(4,3,6), imshow(mat2gray(angle(img_fft_shift)));

img_rot = rot90(img_gray);
subplot(4,3,7), imshow(img_rot);
img_fft = fft2(img_rot);
img_fft_shift = fftshift(img_fft);
subplot(4,3,8), imshow(mat2gray(log(abs(img_fft_shift))));
subplot(4,3,9), imshow(mat2gray(angle(img_fft_shift)));

SCALE = 0.5;
img_s = imresize(img_gray, SCALE);
subplot(4,3,10), imshow(img_s);
img_fft = fft2(img_s);
img_fft_shift = fftshift(img_fft);
subplot(4,3,11), imshow(mat2gray(log(abs(img_fft_shift))));
subplot(4,3,12), imshow(mat2gray(angle(img_fft_shift)));
end

