function [ output_img ] = RecognizeImg( input_img )
BinarizedImg=Pre(input_img);
croppedimg=imcrop(BinarizedImg,[76.5100000000000,213.510000000000,380.980000000000,245.980000000000]);
FinalImg=imfill(croppedimg,'holes');
figure;
imshow(FinalImg);
counter=0;
%%%%%%%%%%%%%%
numFiles=9;
[bmpFiles,namedata]=DigitFunction();
for k = 1:numFiles
img=cell2mat(bmpFiles(k));
Preimg=Pre(img);
digitimg=DigitErrosion(Preimg);
imshow(digitimg)
se=strel(digitimg);
imrode=imerode(FinalImg,se);
 imrode=imcrop(imrode,[0.510000000000000,1.51000000000000,361.980000000000,244.980000000000]);
imshow(imrode)
I_double = im2double(imrode);
wcolor = find(I_double==1);
if(wcolor >= 1)
   disp(namedata(k));  
   counter=counter+1;
end
if(counter == 3)
 break;
end


end


end

