clear;
clc;
ORG_PATH = 'C:\Users\Admin\working\matlab\ctcm\tp2\videos\original_video_10s.mp4';
% COMP_PATH_23 = 'C:\Users\Admin\working\matlab\ctcm\tp2\videos\compress1.mp4';
COMP_PATH_23 = 'C:\Users\Admin\working\matlab\ctcm\tp2\videos\compressed_video_40.mp4';
COMP_PATH_30 = 'C:\Users\Admin\working\matlab\ctcm\tp2\videos\compressed_video_40.mp4';
COMP_PATH_40 = 'C:\Users\Admin\working\matlab\ctcm\tp2\videos\compressed_video_40.mp4';

v1 = VideoReader(ORG_PATH);
v2 = VideoReader(COMP_PATH_23);
v3 = VideoReader(COMP_PATH_30);
v4 = VideoReader(COMP_PATH_40);

i1 = 0;
i2 = 0;
i3 = 0;
i4 = 0;

fig = figure();
fig.WindowState = 'maximized';
ax1 = subplot(2,2,1, 'Parent', fig);
title('Original Video');

ax2 = subplot(2,2,2, 'Parent', fig);
title('Compressed Video CRF 23');

ax3 = subplot(2,2,3, 'Parent', fig);
title('Compressed Video CRF 30');

ax4 = subplot(2,2,4, 'Parent', fig);
title('Compressed Video CRF 40');

while i1 < v1.NumFrames && i2 < v2.NumFrames && i3 < v3.NumFrames && i4 < v4.NumFrames
        if i1 < v1.NumFrames
            i1 = i1+1;
            if ishandle(ax1)
              image(ax1, v1.read(i1));
            else
              break;    %axes is gone, figure is probably gone too
            end
        end
        if i2 < v2.NumFrames
            i2 = i2+1;
            if ishandle(ax2)
              image(ax2, v2.read(i2));
            else
              break;    %axes is gone, figure is probably gone too
            end
        end
        if i3 < v3.NumFrames
            i3 = i3+1;
            if ishandle(ax3)
              image(ax3, v3.read(i3));
            else
              break;    %axes is gone, figure is probably gone too
            end
        end
        if i4 < v4.NumFrames
            i4 = i4+1;
            if ishandle(ax4)
              image(ax4, v4.read(i4));
            else
              break;    %axes is gone, figure is probably gone too
            end
        end
    drawnow
end