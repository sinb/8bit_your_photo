%% load image
img = double(imread('favicon.jpg'));
%% set block size
block_size = 4;
%% load preset color palette
load('nes_cmap.mat')
palette = nes_cmap;
%% run it!!
new_img = pixelize(img, block_size, palette);
imshow(new_img, palette / 255); %% [0, 255] to [0, 1]
