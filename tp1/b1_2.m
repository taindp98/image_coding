% declaring the absolute path for images folder
IMG_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\images";
COMP_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\compression";
DECOMP_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\decompression";

qualityFactor = 10:10:100;

for i = 1:10
    comp_fname = sprintf("comp_qf_%d.jpg", qualityFactor(i));
    comp_img = imread(fullfile(COMP_PATH,comp_fname));
    decomp_fname = sprintf("decomp_qf_%d.tiff", qualityFactor(i));
    imwrite(comp_img,fullfile(DECOMP_PATH,decomp_fname),'tiff');
end

for j = 1:1
    comp_fname = sprintf("comp_qf_%d.jpg", qualityFactor(j));
    comp_img = imread(fullfile(COMP_PATH,comp_fname));
    
    decomp_fname = sprintf("decomp_qf_%d.tiff", qualityFactor(j));
    decomp_img = imread(fullfile(DECOMP_PATH,decomp_fname));
    
    k = j - 1;
    subplot(1,2,2*k+1)
    imshow(comp_img);
    title(sprintf('Compressed Image Quality: %d',qualityFactor(j)));

    subplot(1,2,2*k+2)
    imshow(decomp_img);
    title(sprintf('Decompressed Image Quality: %d',qualityFactor(j)));

end

