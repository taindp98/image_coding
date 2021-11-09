% declaring the absolute path for images folder
IMG_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\images";

% read the original image which has the tiff format
original_img = imread(fullfile(IMG_PATH,"source.tiff"));

% display the original image
imshow(original_img);

% compress original image and save it as the JPEG format
imwrite(original_img,fullfile(IMG_PATH,"compress.jpg"));

% display the information of the compressed image
imageinfo(fullfile(IMG_PATH,"compress.jpg"));
