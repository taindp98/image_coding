function [timeValues,psnrValues] = compute_psnr(org_path, comp_path)
    v1 = VideoReader(org_path);
    v2 = VideoReader(comp_path);

    if v1.NumFrames == v2.NumFrames
        psnrValues = zeros(1,v1.NumFrames);
        timeValues = zeros(1,v1.NumFrames);
        i=0;
        while i < v1.NumFrames
            i = i+1;
            org_frame = read(v1,i);
            comp_frame = read(v2,i);
            [peaksnr, snr] = psnr(comp_frame, org_frame);
            psnrValues(i) = peaksnr;
            timeValues(i) = i;
        end     
    end
end