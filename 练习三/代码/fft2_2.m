 N=64;
 k=0:N-1;
 X=1./(1-0.8*exp(-j*2*pi*k/N));
 x=ifft(X,64);
 n=k;
 stem(n,abs(x))
grid
 xlabel('n');ylabel('x[n]');