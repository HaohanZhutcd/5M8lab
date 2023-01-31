% % I = imread ('kodim24bw.png');
% % figure(1);image(I);colormap(gray(256));axis image;
% % 
% % I = double(imread('kodim24bw.png'))/255;
% % figure(2);image(I);axis image;
% 
% pic = imread('kodim07.png');
% pic = rgb2gray(pic);
% 
% % imhist(pic);
% 
% figure(3);
% image(pic);
% colormap(gray(256)) ; 
% axis image ;
% 
% pic = pic + 128;
% 
% % figure(4);
% % image(pic);
% % colormap(gray(256)) ; 
% % axis image ;
% 
% newpic = pic - 128;
% 
% figure(4);
% image(newpic);
% colormap(gray(256)) ; 
% axis image ;

pic = imread('tennis.png');
% picR = pic(:,:,1);
% picG = pic(:,:,2);
% picB = pic(:,:,3);
% figure(1);
% histogram(picR,(0:256))
% figure(2);
% histogram(picG,(0:256))
% figure(3);
% histogram(picB,(0:256))


pic = rgb2ycbcr(pic);
% picY = pic(:,:,1);
% picCb = pic(:,:,2);
% picCr = pic(:,:,3);
% figure(1);
% histogram(picY,(0:256))
% figure(2);
% histogram(picCb,(0:256))
% figure(3);
% histogram(picCr,(0:256))

pict = imread('tennis.png');
pictR = pict(:,:,1);
pictG = pict(:,:,2);
pictB = pict(:,:,3);
maskR = pictR > 75;
maskG = pictG > 150;
maskB = pictB > 200;
newpict = cat(3, maskR, maskG, maskB);
% figure(4);image(newpict);axis image;


A = imread('kodim23a.png');
B = imread('kodim23b.png');

AR = A(:,:,1);
AG = A(:,:,2);
AB = A(:,:,3);
histcounts(AR)

BR = B(:,:,1);
BG = B(:,:,2);
BB = B(:,:,3);