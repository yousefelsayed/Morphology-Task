function [ output_img ] = Pre( x )
i=rgb2gray(x);
y=wiener2(i);
fff = im2bw(y, graythresh(y));
img=fff;
imgout = (img>mean(img(:)));
imgouter=imcomplement(imgout);
output_img=imgouter;

end