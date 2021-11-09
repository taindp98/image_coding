clear;
clc;
ORIGINAL_VIDEO_PATH = 'C:\Users\Admin\working\matlab\ctcm\tp2\videos\original_video_10s.mp4';
OUT_VIDEO_PATH = 'C:\Users\Admin\working\matlab\ctcm\tp2\blur_videos\blur_video.avi';

in_vid = VideoReader(ORIGINAL_VIDEO_PATH);
out_vid = VideoWriter(OUT_VIDEO_PATH);
open(out_vid);
i = 0;
while i < in_vid.NumFrames
    i = i+1;
    org_frame = read(in_vid,i);
    
    % generate kernel filter to calculating convolution as the blur filter
    windowSize = 10;
    avg3 = ones(windowSize) / windowSize^2;
    blur_frame = imfilter(org_frame, avg3, 'conv');
    frame_rotate = rot90(blur_frame,3);
    writeVideo(out_vid, frame_rotate);
end
close(out_vid);
