% Histogram Equalization  without using inbuilt functions
% Arjun R. Prajapati - BT20ECE081

clc;
clear all;
close all;

% Read the image
I = imread('mountain.jpg');
Ig = rgb2gray(I);
[rows, cols] = size(Ig);

% Convert the image to double 
Id = double(Ig);

% Calculate the histogram
histo_original = zeros(1, 256);
for i = 1:rows
    for j = 1:cols
        pixelval = Id(i, j) + 1;
        histo_original(pixelval) = histo_original(pixelval) + 1;
    end
end

% Generate PDF by dividing total number of pixels
pdf = histo_original/(rows*cols);

% Generate CDF out of PDF
cdf = zeros(1, 256);
cdf(1) = pdf(1);
for i = 2:256
    cdf(i) = cdf(i - 1) + pdf(i);
end

% Perform histogram equalization
cdf_eq = round(255 * cdf);
eq_img = zeros(rows, cols);
for i = 1:rows
    for j = 1:cols
        pixelval = Id(i, j) + 1;
        eq_img(i, j) = cdf_eq(pixelval);
    end
end

% Calculate the histogram of the equalized image
histo_eq = zeros(1, 256);
for i = 1:rows
    for j = 1:cols
        pixelval = eq_img(i, j) + 1;
        histo_eq(pixelval) = histo_eq(pixelval) + 1;
    end
end


figure;

subplot(2, 2, 1);
imshow(uint8(Id));
title('Original Grayscale Image');

subplot(2, 2, 3);
imshow(uint8(eq_img));
title('Equalized Grayscale Image');

subplot(2, 2, 2);
plot(histo_original);
title('Histogram of Original Image');

subplot(2, 2, 4);
plot(histo_eq);
title('Histogram of Equalized Image');