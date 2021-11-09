% declaring the absolute path for images folder
IMG_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\images";
COMP_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\compression";

% read the original image which has the tiff format
% original_img = imread(fullfile(IMG_PATH,"source.tiff"));
original_img = imread(fullfile(IMG_PATH,"nwu.tif"));

% define quality factors as a list from 10 to 100 and step size is 10
qualityFactor = 10:10:100;

for i = 1:10
    fname = sprintf("nwu_comp_qf_%d.jpg", qualityFactor(i));
    imwrite(original_img,fullfile(COMP_PATH,fname),'jpg','quality',qualityFactor(i));
end