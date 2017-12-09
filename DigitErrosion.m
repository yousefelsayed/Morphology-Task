function [ output ] = DigitErrosion( input )
se=strel('rectangle',[3,4]);
imrode=imerode(input,se);
filled=imfill(imrode,'holes');
output=filled;
imshow(filled)
end

