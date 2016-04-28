function task3

I = imread('C:\Documents and Settings\Student\×ÀÃæ\lab2\lena.jpg');
gray = rgb2gray(I);
s = size(I);
subplot(3,3,1);imshow(gray);title(['Origian image']);
subplot(3,3,4);imhist(gray);
subplot(3,3,7);imshow(I);

Jn = double(gray);
ma = max(max(Jn));
mi = min(min(Jn));
for i = 1:s(1)
    for j = 1:s(2)
        Jn(i,j) = 255*(Jn(i,j)-mi)/(ma-mi);
    end
end
Jn = uint8(Jn);

r = double(I(:,:,1));
g = double(I(:,:,2));
b = double(I(:,:,3));
mar = max(max(r));mir = min(min(r));
mag = max(max(g));mig = min(min(g));
mab = max(max(b));mib = min(min(b));
for i = 1:s(1)
    for j = 1:s(2)
        r(i,j) = 255*(r(i,j)-mir)/(mar-mir);
        g(i,j) = 255*(g(i,j)-mig)/(mag-mig);
        b(i,j) = 255*(b(i,j)-mib)/(mab-mib);
    end
end
r = uint8(r);
g = uint8(g);
b = uint8(b);
Jni = I;
for i = 1:s(1)
    for j = 1:s(2)
            Jni(i,j,1) = r(i,j); 
            Jni(i,j,2) = g(i,j); 
            Jni(i,j,3) = b(i,j); 
    end
end
subplot(3,3,2);imshow(Jn);title(['Histogram Normalization']);
subplot(3,3,5);imhist(Jn);
subplot(3,3,8);imshow(Jni);

J = histeq(gray);
r = I(:,:,1);
g = I(:,:,2);
b = I(:,:,3);
Jr = histeq(r);
Jg = histeq(g);
Jb = histeq(b);
Ji = I;
for i = 1:s(1)
    for j = 1:s(2)
            Ji(i,j,1) = Jr(i,j); 
            Ji(i,j,2) = Jg(i,j); 
            Ji(i,j,3) = Jb(i,j); 
    end
end
subplot(3,3,3);imshow(J);title(['Histogram Equalization']);
subplot(3,3,6);imhist(J);
subplot(3,3,9);imshow(Ji);

end