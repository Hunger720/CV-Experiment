function task1
I = double(imread('C:\Documents and Settings\Student\×ÀÃæ\lab2\lena.jpg'))/255;
std = [0,0.1,0.3,0.5];
density = [0,0.05,0.1,0.3];
for k = 1:4
    subplot(2,4,k);imshow(GaussianNoise(I,0,std(k)));title(['std=' num2str(std(k))]);
    subplot(2,4,k+4);imshow(saltPeperNoise(I,density(k)));title(['density=' num2str(density(k))]);
end
end

function G = GaussianNoise(I,m,std)
    s = size(I);
    G = I + sqrt(std)*randn(s) + m;
end

function output = saltPeperNoise(I,density)
    output = I;
    s = size(I);
    x = rand(s);
    output(x < density/2) = 0;
    output(x >= density/2 & density < density) = 1;
end