oh = imread("example 2.png");
lab_he = rgb2lab(oh);
ab = lab_he(:,:,2:3);
ab = im2single(ab);
numColors = 3;
L = imsegkmeans(ab,numColors);
B = labeloverlay(oh,L);
imshow(B)
title("Object Recognition")