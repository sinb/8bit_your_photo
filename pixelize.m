function output_img = pixelize(img, block_size, palette)
%% generate pixelized image with given color palette    
    % pad image first, for easily computing average of blocks
    pad_img = pad(img, block_size);
    img_w = size(pad_img, 1);
    img_h = size(pad_img, 2);
    output_img = zeros(img_w, img_h);
    % for every block
    for i = 1:block_size:img_w
        for j = 1:block_size:img_h
            % get average rgb
            [avg_r, avg_g, arg_b] = avg_pix(pad_img(i:i+block_size-1, j:j+block_size-1, :));
            color =  [avg_r, avg_g, arg_b];
            % get nearst index in palette
            closet_idx = getClosetColor(color, palette);
            % set this block to this index
            output_img(i:i+block_size-1, j:j+block_size-1) = setBlock(closet_idx, output_img(i:i+block_size-1, j:j+block_size-1));
        end
    end
end