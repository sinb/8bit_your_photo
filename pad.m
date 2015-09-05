function pad_img = pad(img, block_size)
%% pad img with 0, thus width and height could be divided by block_size
    w = size(img, 1);
    h = size(img, 2);
    c = size(img, 3);
    w_factor = ceil(w / block_size);
    h_factor = ceil(h / block_size);
    pad_img = zeros(block_size*w_factor, block_size*h_factor, c);
    pad_img(1:w, 1:h, :) = img;
end