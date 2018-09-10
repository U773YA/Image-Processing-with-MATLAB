clc
clear all
close all
file1=input('Enter input filename : ','s');
img=imread(file1);
[r,c,d]=size(img);
f=zeros(256,1);
for i=1:r
    for j=1:c
        f(img(i,j,1)+1)=f(img(i,j,1)+1)+1;
    end
end
pro=r*c;
f=f/pro;
img2=zeros(r,c,'uint8');
f2=zeros(256,1,'uint8');
sum=0;
for i=1:256
    sum=sum+f(i);
    f2(i)=255*sum;
end
f3=zeros(256,1);
for i=1:256
    f3(f2(i)+1)=f3(f2(i)+1)+f(i);
end
for i=1:r
    for j=1:c
        img2(i,j)=f2(img(i,j,1)+1);
    end
end
subplot(2,2,1);
imshow(img);
subplot(2,2,2);
bar(0:255,f);
xlim([0 255]);
subplot(2,2,3);
imshow(img2);
subplot(2,2,4);
bar(0:255,f3);
xlim([0 255]);