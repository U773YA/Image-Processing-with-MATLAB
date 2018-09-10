clc
clear all
close all
file1=input('Enter input filename : ','s');
img=imread(file1);
[r,c,d]=size(img);
img2=zeros(r,c,8,'uint8');
for i=1:r
    for j=1:c
        for k=1:8
            m=2^(k-1);
            h=bitand(img(i,j,1),m);
            if(h==m)
                img2(i,j,k)=255;
            else
                img2(i,j,k)=0;
            end
        end
    end
end
for i=1:8
    subplot(3,3,i);
    imshow(img2(:,:,i));
    title(sprintf('Bitplane %d',i-1));
end
subplot(3,3,9);
imshow(img);
title('Original image');
