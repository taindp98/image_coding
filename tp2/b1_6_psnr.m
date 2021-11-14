clear;
clc;
RAW_VID_PATH_20 = 'C:\Users\Admin\working\matlab\ctcm\tp2\videos\compressed_video_20.mp4';
RAW_VID_PATH_30 = 'C:\Users\Admin\working\matlab\ctcm\tp2\videos\compressed_video_30.mp4';
RAW_VID_PATH_40 = 'C:\Users\Admin\working\matlab\ctcm\tp2\videos\compressed_video_40.mp4';
RAW_VID_PATH_50 = 'C:\Users\Admin\working\matlab\ctcm\tp2\videos\compressed_video_50.mp4';


COMP_VID_PATH_50 = 'C:\Users\Admin\working\matlab\ctcm\tp2\noise_videos\compressed_video_50.mp4';
COMP_VID_PATH_40 = 'C:\Users\Admin\working\matlab\ctcm\tp2\noise_videos\compressed_video_40.mp4';
COMP_VID_PATH_30 = 'C:\Users\Admin\working\matlab\ctcm\tp2\noise_videos\compressed_video_30.mp4';
COMP_VID_PATH_20 = 'C:\Users\Admin\working\matlab\ctcm\tp2\noise_videos\compressed_video_20.mp4';

[t0,p0] = compute_psnr(RAW_VID_PATH_50,COMP_VID_PATH_50);
[t1,p1] = compute_psnr(RAW_VID_PATH_40,COMP_VID_PATH_40);
[t2,p2] = compute_psnr(RAW_VID_PATH_30,COMP_VID_PATH_30);
[t3,p3] = compute_psnr(RAW_VID_PATH_20,COMP_VID_PATH_20);

subplot(2,2,1)
plot(t0,p0,'b-o');
title('Constant Rate Factor: 50');
xlabel('Time');
ylabel('PSNR Value');

subplot(2,2,2)
plot(t1,p1,'b-o');
title('Constant Rate Factor: 40');
xlabel('Time');
ylabel('PSNR Value');

subplot(2,2,3)
plot(t2,p2,'b-o');
title('Constant Rate Factor: 30');
xlabel('Time');
ylabel('PSNR Value');

subplot(2,2,4)
plot(t3,p3,'b-o');
title('Constant Rate Factor: 20');
xlabel('Time');
ylabel('PSNR Value');