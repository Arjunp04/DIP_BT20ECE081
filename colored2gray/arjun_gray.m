% color to grayscale image conversion
% Arjun R. Prajapati(BT20ECE081)


clc;
clear all;
close all;

I = imread('image.jpg');
subplot(1,2,1);
imshow(I);
title('Original Image');



% ------------------------- using rgb2gray function ----------------------%

Ig = rgb2gray(I);
subplot(1,2,2);
imshow(Ig);
title('Grayscale Image');



% -----------------------------using weighted method --------------------

R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

Ig = 0.2989*R+0.5870*G+0.1140*B;

%display image
subplot(1,2,2);
imshow(Ig);
title('Grayscale Image');

% ----------------------------USING AVERAGE METHOD ----------------------%

Id = double(I);

R = Id(:,:,1);
G = Id(:,:,2);
B = Id(:,:,3);

% Calculate grayscale using the average method
Ia = (R + G + B) / 3;
Ig = uint8(round(Ia));

subplot(1, 2, 2);
imshow(Ig);
title('Grayscale Image');



