N=64;
 n=0:2*N-1;
 x=cos(2*pi*7*n/N)+1/2*cos(2*pi*19*n/N); 
 X=fft(x,128);
 k=n;
 stem(k,abs(X))
 grid
xlabel('k');ylabel('|X[k]|');
