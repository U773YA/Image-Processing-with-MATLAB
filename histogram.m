clc
clear all
close all
file1=input('Enter input filename : ','s');
img=imread(file1);
imhist(img(:,:,1));
ylim([0 5e4]);