% declaring the absolute path for images folder
IMG_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\images";
COMP_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\compression";

% read the compressed images with compression quality is 10
uniform_img = imread(fullfile(COMP_PATH,"nwu_comp_qf_10.jpg"));
texture_img = imread(fullfile(COMP_PATH,"comp_qf_10.jpg"));

subplot(1,2,1)
imshow(uniform_img);
title(sprintf('Uniform Image Quality: %d',10));

subplot(1,2,2)
imshow(texture_img);
title(sprintf('Texture Image Quality: %d',10));
