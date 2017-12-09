function [ output,outputdata ] = DigitFunction(  )
bmpFiles = dir('*.bmp');
numFiles = length(bmpFiles);
mydata = cell(1,numFiles);
namedata=[1 3 4 6 7 8 9];
for k = 1:numFiles
    mydata{k} = imread(bmpFiles(k).name);
   
    %fprintf(bmpFiles(k).name);
end
output=mydata;
outputdata=namedata;
end

