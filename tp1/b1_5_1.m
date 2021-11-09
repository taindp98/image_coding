% declaring the absolute path for images folder
IMG_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\images";

% read the original image which has the tiff format
original_img = imread(fullfile(IMG_PATH,"source.tiff"));

% generate kernel filter to calculating convolution as the blur filter
windowSize = 15;
avg3 = ones(windowSize) / windowSize^2;
blurredImage = imfilter(original_img, avg3, 'conv');

imwrite(blurredImage, fullfile(IMG_PATH,"img_with_blur.tiff"), "tiff");

imshow(blurredImage)