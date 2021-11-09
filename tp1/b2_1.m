% declaring the absolute path for images folder
COMP_PATH = "C:\Users\Admin\working\matlab\ctcm\tp1\compression";

% generate an array to store bpp values
bppValues = zeros(1,10);

% define quality factors
qualityFactor = 10:10:100;

for i=1:10
%     get compressed images
    fname=fullfile(COMP_PATH,sprintf('comp_qf_%d.jpg',qualityFactor(i)));
    
%     get information of image as a structure
    info = imfinfo(fname);
    
%     get size of compressed images as a bit sequence
    bsize = info.FileSize;
    
%     get visual size of compressed images
    h = info.Height;
    w = info.Width;
    fsize = h*w;
    
%     calculating the bpp follow the formula
    bpp = bsize/fsize;
    
%     put the bpp value into the array to analysising
    bppValues(i) = bpp;
end

% plot bpp array
plot(qualityFactor,bppValues,'b-o');

xlabel('Compression Quality Factor');
ylabel('Bpp Value');