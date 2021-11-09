% declaring the absolute path for images folder
IMG_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\images";

% read the original image which has the tiff format
original_img = imread(fullfile(IMG_PATH,"source.tiff"));

% generate AWGN noise and add it to original image
img_with_noise = imnoise(original_img, 'gaussian');

% display image with noise
imshow(img_with_noise);

% save image with noise as a tiff format
imwrite(img_with_noise, fullfile(IMG_PATH,"img_with_noise.tiff"), "tiff");