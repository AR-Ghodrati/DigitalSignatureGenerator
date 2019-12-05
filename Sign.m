clear ; clear all ; clc;
rawPic = imread('\\vmware-host\Shared Folders\Documents\MATLAB\Files\Sign.jpg');
resizedPic = imresize(rawPic,[500 500]);


grayScale = rgb2gray(resizedPic);
subplot(2,2,1)
imshow(resizedPic)
title('Orginal Sign Image')


x = find(grayScale > 100);
grayScale(x) = x;


subplot(2,2,2)
imshow(grayScale)
title('GrayScale Sign Image')


K = medfilt2(grayScale);

subplot(2,2,3)
imshow(K)
title('DeNoise Sign Image')
imwrite(K, '\\vmware-host\Shared Folders\Documents\MATLAB\Files\DeNoiseSign.bmp', 'bmp')


