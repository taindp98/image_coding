clear;
clc;
BLUR_VID_PATH = 'C:\Users\Admin\working\matlab\ctcm\tp2\blur_videos\blur_video.avi';
COMP_VID_PATH_50 = 'C:\Users\Admin\working\matlab\ctcm\tp2\blur_videos\compressed_video_50.mp4';
COMP_VID_PATH_40 = 'C:\Users\Admin\working\matlab\ctcm\tp2\blur_videos\compressed_video_40.mp4';
COMP_VID_PATH_30 = 'C:\Users\Admin\working\matlab\ctcm\tp2\blur_videos\compressed_video_30.mp4';
COMP_VID_PATH_20 = 'C:\Users\Admin\working\matlab\ctcm\tp2\blur_videos\compressed_video_20.mp4';

[t0,s0] = compute_ssim(BLUR_VID_PATH,COMP_VID_PATH_50);
[t1,s1] = compute_ssim(BLUR_VID_PATH,COMP_VID_PATH_40);
[t2,s2] = compute_ssim(BLUR_VID_PATH,COMP_VID_PATH_30);
[t3,s3] = compute_ssim(BLUR_VID_PATH,COMP_VID_PATH_20);

subplot(2,2,1)
plot(t0,s0,'b-o');
title('Constant Rate Factor: 50');
xlabel('Time');
ylabel('SSIM Value');

subplot(2,2,2)
plot(t1,s1,'b-o');
title('Constant Rate Factor: 40');
xlabel('Time');
ylabel('SSIM Value');

subplot(2,2,3)
plot(t2,s2,'b-o');
title('Constant Rate Factor: 30');
xlabel('Time');
ylabel('SSIM Value');

subplot(2,2,4)
plot(t3,s3,'b-o');
title('Constant Rate Factor: 20');
xlabel('Time');
ylabel('SSIM Value');
