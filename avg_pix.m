function [r,g,b] = avg_pix(block)
%% compute the average rgb of the block
    block_w = size(block, 1);
    block_h = size(block, 2);
    r = 0.0; 
    g = 0.0; 
    b = 0.0;
    for w = 1:1:block_w
        for h = 1:1:block_h
            r  = r + block(w, h, 1);
            g  = g + block(w, h, 2);
            b  = b + block(w, h, 3);
        end
    end
    r = r / (block_w*block_h);
    g = g / (block_w*block_h);
    b = b / (block_w*block_h);
end