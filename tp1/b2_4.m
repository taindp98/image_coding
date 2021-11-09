% declaring the absolute path for images folder
IMG_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\images";
COMP_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\compression";

fname_origin = fullfile(IMG_PATH,"source.tiff");
original_img = imread(fname_origin);

% generate an array to store SSIM values and ratio values
ssimValues = zeros(1,10);
ratioValues = zeros(1,10);

qualityFactor = 10:10:100;
for i=1:10
    fname=fullfile(COMP_PATH,sprintf('comp_qf_%d.jpg',qualityFactor(i)));
    im_comp = imread(fname);
    ssimValues(i) = ssim(imread(fname),original_img);
    info_comp = imfinfo(fname);
    info_origin = imfinfo(fname_origin);
    bitsize_comp = info_comp.FileSize;
    bitsize_origin = info_origin.FileSize;
    
    % compression ratio
    comp_ratio = bitsize_origin/bitsize_comp;
    ratioValues(i) = comp_ratio;
end

plot(ratioValues,ssimValues,'b-o');

xlabel('Compression Ratio');
ylabel('SSIM Value');