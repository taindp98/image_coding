clear;
clc;
ORIGINAL_VIDEO_PATH = 'C:\Users\Admin\working\matlab\ctcm\tp2\videos\original_video_10s.mp4';
OUT_VIDEO_PATH = 'C:\Users\Admin\working\matlab\ctcm\tp2\noise_videos\noise_video.avi';

in_vid = VideoReader(ORIGINAL_VIDEO_PATH);
out_vid = VideoWriter(OUT_VIDEO_PATH);
open(out_vid);
i = 0;
while i < in_vid.NumFrames
    i = i+1;
    org_frame = read(in_vid,i);
    frame_w_noise = imnoise(org_frame, 'gaussian');
    frame_rotate = rot90(frame_w_noise,3);
    writeVideo(out_vid, frame_rotate);
end
close(out_vid);
