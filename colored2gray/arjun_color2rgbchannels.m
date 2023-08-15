% ----------------color image to red, blue, green images---------------
% Arjun R. Prajapati(BT20ECE081)

clc;
clear all;
close all;

I = imread('image.jpg');  %image reading
subplot(2,2,1);
imshow(I);
title('Original Image');

%red color component 
red_img = I;
red_img(:,:,2)=0;
red_img(:,:,3)=0;

subplot(2, 2, 2);
imshow(red_img);
title('Red Channel');

% green colour componenet
green_img = I;
green_img(:,:,1)=0;
green_img(:,:,3)=0;

subplot(2, 2, 3);
imshow(green_img);
title('Green Channel');

% blue colour component

blue_img = I;
blue_img(:,:,2)=0;
blue_img(:,:,1)=0;

subplot(2, 2, 4);
imshow(blue_img);
title('Blue Channel');
