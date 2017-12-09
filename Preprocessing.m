function [ output_img ] = Preprocessing( x )
[H W L] = size(x);
imgout=x;
imgouter = zeros(H, W);
for i=1:H
    for j=1:W
        if(imgout(i,j,1) <= 50 && imgout(i,j,2) <= 50 && imgout(i,j,3) <= 50 )
            imgout(i,j,1) = 1;
            imgout(i,j,2) = 1;
            imgout(i,j,3) = 1;
        else
           imgout(i,j,1) = 0;
            imgout(i,j,2) = 0;
            imgout(i,j,3) = 0;
        end
    end
end


x=imgout;
i=rgb2gray(x);
y=medfilt2(i);
fff = im2bw(y, graythresh(y));
img=fff;
imshow(img)
imgout=img;
imgouter=imgout;
se = strel('square',4);
dilateBW = imdilate(imgouter,se);
erodeBW = imerode(dilateBW,se);
erodeBW = imerode(erodeBW,se);
imshow(erodeBW);
dialate=imerode(erodeBW,se);
imshow(dialate);
bw=logical(dialate);
region=regionprops(bw,'all');
[H]=size(region);
for i =1 : H
%     if(region(i).Area ==5248)
        figure;
   imshow( region(i).Image);
%    else
%        continue;
%    end   
    
end




end