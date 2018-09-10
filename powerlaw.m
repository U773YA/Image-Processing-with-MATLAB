clc
clear all
close all
file1=input('Enter input filename : ','s');
img=imread(file1);
[r,c,d]=size(img);
img2=zeros(r,c,d,'uint8');
const=1;
g=1.2;
for i=1:r
    for j=1:c
        for k=1:d
            h=double(img(i,j,k));
            img2(i,j,k)=const*(h^g);
        end
    end
end
subplot(1,2,1);
imshow(img);
title('Original Image');
subplot(1,2,2);
imshow(img2);
title(sprintf('Power Law Transformed Image with c=%.2f & g=%.2f',const,g));