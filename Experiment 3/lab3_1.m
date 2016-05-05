function lab3_1
syms x
syms f
f = 2*sin(2*x)+6*cos(4*x)+5*cos(6*x)+4*sin(10*x)+3*sin(16*x);
subplot(3,5,1);ezplot(f,[-2*pi,2*pi]);
[a,b,fs] = fseries(f,x,2);
subplot(3,5,2);ezplot(fs,[-2*pi,2*pi]);
[a,b,fs] = fseries(f,x,4);
subplot(3,5,3);ezplot(fs,[-2*pi,2*pi]);
[a,b,fs] = fseries(f,x,10);
subplot(3,5,4);ezplot(fs,[-2*pi,2*pi]);
[a,b,fs] = fseries(f,x,50);
subplot(3,5,5);ezplot(fs,[-2*pi,2*pi]);

t = triangularPulse(-pi,pi,x);
subplot(3,5,6);ezplot(t,[-2*pi,2*pi]);
[a,b,fs] = fseries(t,x,2);
subplot(3,5,7);ezplot(fs,[-2*pi,2*pi]);
[a,b,fs] = fseries(t,x,4);
subplot(3,5,8);ezplot(fs,[-2*pi,2*pi]);
[a,b,fs] = fseries(t,x,10);
subplot(3,5,9);ezplot(fs,[-2*pi,2*pi]);
[a,b,fs] = fseries(t,x,50);
subplot(3,5,10);ezplot(fs,[-2*pi,2*pi]);

r = rectangularPulse(-pi/2,pi/2,x);
subplot(3,5,11);ezplot(r,[-2*pi,2*pi]);
[a,b,fs] = fseries(r,x,2);
subplot(3,5,12);ezplot(fs,[-2*pi,2*pi]);
[a,b,fs] = fseries(r,x,4);
subplot(3,5,13);ezplot(fs,[-2*pi,2*pi]);
[a,b,fs] = fseries(r,x,10);
subplot(3,5,14);ezplot(fs,[-2*pi,2*pi]);
[a,b,fs] = fseries(r,x,50);
subplot(3,5,15);ezplot(fs,[-2*pi,2*pi]);
end

function [an,bn,f] = fseries(fx,x,n)
an = vpa(int(fx,x,-pi,pi)/2/pi);
bn = [];
f = an;
for ii = 1:n
    ann = vpa(int(fx*cos(ii*x),x,-pi,pi)/pi);
    bnn = vpa(int(fx*sin(ii*x),x,-pi,pi)/pi);
    an = [an,ann];
    bn = [bn,bnn];
    f = f+ann*cos(ii*x)+bnn*sin(ii*x);
end
end