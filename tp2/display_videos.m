function []=display_videos(vid1, vid2, vid3, vid4)
    v1 = VideoReader(vid1);
    v2 = VideoReader(vid2);
    v3 = VideoReader(vid3);
    v4 = VideoReader(vid4);

    i1 = 0;
    i2 = 0;
    i3 = 0;
    i4 = 0;

    fig = figure();
    fig.WindowState = 'maximized';
    ax1 = subplot(2,2,1, 'Parent', fig);
%     title('Original Video');

    ax2 = subplot(2,2,2, 'Parent', fig);
%     title('Compressed Video CRF 23');

    ax3 = subplot(2,2,3, 'Parent', fig);
%     title('Compressed Video CRF 30');

    ax4 = subplot(2,2,4, 'Parent', fig);
%     title('Compressed Video CRF 40');

    while i1 < v1.NumFrames && i2 < v2.NumFrames && i3 < v3.NumFrames && i4 < v4.NumFrames
            if i1 < v1.NumFrames
                i1 = i1+1;
                if ishandle(ax1)
                  image(ax1, rot90(v1.read(i1),1));
                else
                  break;    %axes is gone, figure is probably gone too
                end
            end
            if i2 < v2.NumFrames
                i2 = i2+1;
                if ishandle(ax2)
                  image(ax2, rot90(v2.read(i2),1));
                else
                  break;    %axes is gone, figure is probably gone too
                end
            end
            if i3 < v3.NumFrames
                i3 = i3+1;
                if ishandle(ax3)
                  image(ax3, rot90(v3.read(i3),1));
                else
                  break;    %axes is gone, figure is probably gone too
                end
            end
            if i4 < v4.NumFrames
                i4 = i4+1;
                if ishandle(ax4)
                  image(ax4, rot90(v4.read(i4),1));
                else
                  break;    %axes is gone, figure is probably gone too
                end
            end
        drawnow
    end
end