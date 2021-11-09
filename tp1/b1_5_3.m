% declaring the absolute path for images folder
IMG_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\images";
COMP_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\blur_comp";
DECOMP_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\blur_decomp";

qualityFactor = 10:10:100;

for i = 1:10
    comp_fname = sprintf("blur_comp_qf_%d.jpg", qualityFactor(i));
    comp_img = imread(fullfile(COMP_PATH,comp_fname));
    decomp_fname = sprintf("blur_decomp_qf_%d.tiff", qualityFactor(i));
    imwrite(original_img,fullfile(DECOMP_PATH,decomp_fname),'tiff');
end

for j = 1:1
    original_img = imread(fullfile(IMG_PATH,"source.tiff"));
    
    comp_fname = sprintf("blur_comp_qf_%d.jpg", qualityFactor(j));
    comp_img = imread(fullfile(COMP_PATH,comp_fname));
    
    decomp_fname = sprintf("blur_decomp_qf_%d.tiff", qualityFactor(j));
    decomp_img = imread(fullfile(DECOMP_PATH,decomp_fname));
    
    k = j - 1;
    subplot(1,3,3*k+1)
    imshow(original_img);
    title(sprintf('Original Image'));
    
    subplot(1,3,3*k+2)
    imshow(comp_img);
    title(sprintf('Compressed Image with blur Quality: %d',qualityFactor(j)));

    subplot(1,3,3*k+3)
    imshow(decomp_img);
    title(sprintf('Decompressed Image with blur Quality: %d',qualityFactor(j)));

end

