function lab3_2
syms x
syms w
xx = -15:15;

r = rectangularPulse(-pi,pi,x);
subplot(4,3,1);ezplot(r,[-2*pi,2*pi]);
fs = fourier(r,w);
subplot(4,3,2);ezplot(fs,[-10,10,-2,7]);
[an,f] = fseries2(r,x,15);
subplot(4,3,3);bar(xx,an);

cr = cos(3*x)*rectangularPulse(-pi,pi,x);
subplot(4,3,4);ezplot(cr,[-2*pi,2*pi]);
fs = fourier(cr,w);
subplot(4,3,5);ezplot(fs,[-10,10,-1.5,3.5]);
[an,f] = fseries2(cr,x,15);
subplot(4,3,6);bar(xx,an);

sr = sin(3*x)*rectangularPulse(-pi,pi,x);
subplot(4,3,7);ezplot(sr,[-2*pi,2*pi]);
fs = fourier(sr,w);
subplot(4,3,8);ezplot(-i*fs,[-10,10,-4,4]);
[an,f] = fseries2(sr,x,15);
subplot(4,3,9);bar(xx,real(an));

t = 3*triangularPulse(-pi,pi,x);
subplot(4,3,10);ezplot(t,[-2*pi,2*pi]);
fs = fourier(t,w);
subplot(4,3,11);ezplot(fs,[-10,10,-1,11]);
[an,f] = fseries2(t,x,15);
subplot(4,3,12);bar(xx,real(an));
end

function [an,f] = fseries2(fx,x,n)
an = [];
f = 0;
for ii = -n:n
    ann = vpa(int(fx*exp(i*(ii*x)),x,-pi,pi)/2/pi);
    an = [an,ann];
    f = f + ann*exp(i*(ii*x));
end
end