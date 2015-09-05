function min_idx = getClosetColor(color, palette)
%% get nearst index in palette
    min_idx = 0;
    min_dist = intmax;
    for i = 1:1:size(palette, 1)
        tmp = sqrt(sum(abs(color - palette(i, :)).^2));
        if tmp < min_dist
            min_dist = tmp;
            min_idx = i;
        end
    end
    
end