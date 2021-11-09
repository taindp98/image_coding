% declaring the absolute path for images folder
IMG_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\images";
COMP_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\compression";
original_img = imread(fullfile(IMG_PATH,"source.tiff"));

% generate an array to store PSNR values
psnrValues = zeros(1,10);
qualityFactor = 10:10:100;

for i=1:10
    fname=fullfile(COMP_PATH,sprintf('comp_qf_%d.jpg',qualityFactor(i)));
    comp_img = imread(fname);
    [peaksnr, snr] = psnr(comp_img, original_img);
    psnrValues(i) = peaksnr;

end

plot(qualityFactor,psnrValues,'b-o');

xlabel('Compression Quality Factor');
ylabel('PSNR Value');