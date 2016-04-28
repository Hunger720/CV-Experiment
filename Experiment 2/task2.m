function task2
I = double(imread('D:\用户目录\我的文档\SCUT\Courses\First Year\Second Semester\Courses\Computer Vision\Experiment\Experiment 2\lab2\lena.jpg'))/255;
i1 = imnoise(I,'Gaussian');
i2 = imnoise(I,'salt & pepper',0.05);
hsize= [3,5,7];

figure('NumberTitle','off','Name','Average operator');
for k = 1:3
    h = fspecial('average',hsize(k));
    subplot(2,4,1);imshow(i1);title(['Gaussian noise']);
    subplot(2,4,k+1);imshow(imfilter(i1,h));title(['HSIZE=' num2str(hsize(k))]);
    subplot(2,4,5);imshow(i2);title(['salt & pepper noise']);
    subplot(2,4,k+5);imshow(imfilter(i2,h));title(['HSIZE=' num2str(hsize(k))]);
end

figure('NumberTitle','off','Name','Gaussian average operator');
for k = 1:3
    h = fspecial('gaussian',hsize(k));
    subplot(2,4,1);imshow(i1);title(['Gaussian noise']);
    subplot(2,4,k+1);imshow(imfilter(i1,h));title(['HSIZE=' num2str(hsize(k))]);
    subplot(2,4,5);imshow(i2);title(['salt & pepper noise']);
    subplot(2,4,k+5);imshow(imfilter(i2,h));title(['HSIZE=' num2str(hsize(k))]);
end

figure('NumberTitle','off','Name','Median filter');
for k = 1:3
    subplot(2,4,1);imshow(i1);title(['Gaussian noise']);
    r = medfilt2(i1(:,:,1),[hsize(k),hsize(k)]);g = medfilt2(i1(:,:,2),[hsize(k),hsize(k)]);b = medfilt2(i1(:,:,3));
    output = cat(3,r,g,b);
    subplot(2,4,k+1);imshow(output);title(['HSIZE=' num2str(hsize(k))]);
    
    subplot(2,4,5);imshow(i2);title(['salt & pepper noise']);
    r = medfilt2(i2(:,:,1),[hsize(k),hsize(k)]);g = medfilt2(i2(:,:,2),[hsize(k),hsize(k)]);b = medfilt2(i2(:,:,3));
    output = cat(3,r,g,b);
    subplot(2,4,k+5);imshow(output);title(['HSIZE=' num2str(hsize(k))]);
end

end