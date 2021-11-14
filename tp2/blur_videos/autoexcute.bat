ffmpeg -i "blur_video.avi" -c:v libx265 -crf 20 -preset fast -c:a aac -an "compressed_video_20.mp4"
ffmpeg -i "blur_video.avi" -c:v libx265 -crf 30 -preset fast -c:a aac -an "compressed_video_30.mp4"
ffmpeg -i "blur_video.avi" -c:v libx265 -crf 40 -preset fast -c:a aac -an "compressed_video_40.mp4"
ffmpeg -i "blur_video.avi" -c:v libx265 -crf 50 -preset fast -c:a aac -an "compressed_video_50.mp4"
