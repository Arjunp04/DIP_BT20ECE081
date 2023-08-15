% Histogram Equalization using inbulit functions
% Arjun R. Prajapati - BT20ECE081

clc;
clear all;
close all;

%read the image and plot it
I= imread('image.jpg');


% Convert to grayscale if it's a color image
if size(I, 3) == 3
    Ig = rgb2gray(I);
else
    Ig = I;
end

% Calculate the histogram of the grayscale image
histo = imhist(Ig);

% Perform histogram equalization using histeq
hist_equ_image = histeq(Ig);


figure;

subplot(3,2,1);
imshow(I);
title("Original image")

subplot(3, 2, 2);
imshow(Ig);
title('Grayscale Image');


subplot(3, 2, 3);
stem(histo);
title('Histogram of GrayScale Image');

subplot(3, 2, 4);
imshow(hist_equ_image);
title('Equalized Grayscale Image');


subplot(3, 2, 5);
equalized_histo = imhist(hist_equ_image);
stem(equalized_histo);
title('Histogram of Equalized Image');








