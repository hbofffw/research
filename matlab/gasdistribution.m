xa=0:0.05:50;
%t0=5;
ta=0:0.05:50;
[x,t] = meshgrid(xa,ta);
u=0.8;
D=0.123;
M=50;
%if t>t0
%C = (M./(2*sqrt((D*pi).*(t-t0)))).*exp(-(x-u*(t-t0)).^2./((D*4).*(t-t0)));
%else
    %C=0;
%end
%
%C = (M./(2*sqrt((D*pi).*(t-t0)))).*exp(-(x-u*(t-t0)).^2./((D*4).*(t-t0)));
C = 1./(2.*sqrt(pi.*t)).*exp(-(x-t).^2./(4.*t));
%C= exp(-x.^2-t.^2);
subplot(1,1,1); mesh(x,t,C);title('concentration');
xlabel('x');
ylabel('t');
zlabel('C');
%subplot(2,1,2); contour3(C);title('concentration');