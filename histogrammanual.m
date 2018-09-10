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
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imhist(img(:,:,1));
ylim([0 5e4]);
subplot(1,3,3);
bar(0:255,f);
xlim([0 255]);