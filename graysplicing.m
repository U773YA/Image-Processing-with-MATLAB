clc
clear all
close all
file1=input('Enter input filename : ','s');
img=imread(file1);
[r,c,d]=size(img);
img2=zeros(r,c,'uint8');
for i=1:r
    for j=1:c
        if(img(i,j,1)>0 && img(i,j,1)<50)
            img2(i,j)=img(i,j,1)+50;
        else
            img2(i,j)=img(i,j,1);
        end
    end
end
subplot(1,2,1);
imshow(img);
title('Original Image');
subplot(1,2,2);
imshow(img2);
title('Gray Level Spliced image');