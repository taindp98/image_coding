function [timeValues,ssimValues] = compute_ssim(org_path, comp_path)
    v1 = VideoReader(org_path);
    v2 = VideoReader(comp_path);

    if v1.NumFrames == v2.NumFrames
        ssimValues = zeros(1,v1.NumFrames);
        timeValues = zeros(1,v1.NumFrames);
        i=0;
        while i < v1.NumFrames
            i = i+1;
            org_frame = read(v1,i);
            comp_frame = read(v2,i);
            if size(org_frame) == size(comp_frame)
                ssimValues(i) = ssim(comp_frame,org_frame);
            else
                comp_frame_rot = rot90(comp_frame,3);
                ssimValues(i) = ssim(comp_frame_rot,org_frame);
            end
            timeValues(i) = i;
        end     
    end
end