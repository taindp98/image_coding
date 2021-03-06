clear;
clc;
TYPE = 'blur_videos';
ORG_PATH = 'C:\Users\Admin\working\matlab\ctcm\tp2\videos\original_video_10s.mp4';

NOISE_PATH = 'C:\Users\Admin\working\matlab\ctcm\tp2\noise_videos\noise_video.avi';
BLUR_PATH = 'C:\Users\Admin\working\matlab\ctcm\tp2\blur_videos\blur_video.avi';

COMP_PATH_20 = sprintf('C:\\Users\\Admin\\working\\matlab\\ctcm\\tp2\\%s\\compressed_video_20.mp4',TYPE);
COMP_PATH_30 = sprintf('C:\\Users\\Admin\\working\\matlab\\ctcm\\tp2\\%s\\compressed_video_30.mp4',TYPE);
COMP_PATH_40 = sprintf('C:\\Users\\Admin\\working\\matlab\\ctcm\\tp2\\%s\\compressed_video_40.mp4',TYPE);
COMP_PATH_50 = sprintf('C:\\Users\\Admin\\working\\matlab\\ctcm\\tp2\\%s\\compressed_video_50.mp4',TYPE);

display_videos(BLUR_PATH, COMP_PATH_30, COMP_PATH_40, COMP_PATH_50)