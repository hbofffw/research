%t = 0:0.1:100;
%u=0.5;
D=0.123;
M=50;
fprintf('Input u:\n');
u = input('input the wind speed\n');
if u == 0;
    t = 0:1:10000;
else 
    t = 0:0.01:(1/u)*100;
end
x1 = 10;
x2 = 20;
x3 = 30;
x4 = 40;
C1 = (M./(2*sqrt((D*pi).*t))).*exp(-(x1-u*t).^2./((D*4).*t));
C2 = (M./(2*sqrt((D*pi).*t))).*exp(-(x2-u*t).^2./((D*4).*t));
C3 = (M./(2*sqrt((D*pi).*t))).*exp(-(x3-u*t).^2./((D*4).*t));
C4 = (M./(2*sqrt((D*pi).*t))).*exp(-(x4-u*t).^2./((D*4).*t));
subplot(4,1,1); plot(t,C1);title(['x=',num2str(x1)]);
subplot(4,1,2); plot(t,C2);title(['x=',num2str(x2)]);
subplot(4,1,3); plot(t,C3);title(['x=',num2str(x3)]);
subplot(4,1,4); plot(t,C4);title(['x=',num2str(x4)]);

fid=fopen('C1.txt','wt');
fprintf(fid,'%2f, ',C1);
fclose(fid);

fid=fopen('C2.txt','wt');
fprintf(fid,'%2f, ',C2);
fclose(fid);

fid=fopen('C3.txt','wt');
fprintf(fid,'%2f, ',C3);
fclose(fid);

fid=fopen('C4.txt','wt');
fprintf(fid,'%2f, ',C4);
fclose(fid);