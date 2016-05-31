function lab4_1

t = linspace(0, 2*pi, 2^8);
y = 10*sin(2*t)+16*cos(4*t)+2*cos(t)+8*sin(3*t)+4*sin(50*t);
figure;
subplot(1,3,1),plot(t,y),title('Discrete Signal');

L = 5;
mask = fspecial('gaussian',[1 L]);
Y = conv(y,mask,'same');
subplot(1,3,2),plot(t,Y),title('Gaussian Denoise');

F = fft(y);
u = 6;
F(2+u:256-u) = 0;
I = ifft(F);
subplot(1,3,3),plot(t, I),title('DFT Denoise');

end

