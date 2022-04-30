clear all
close all
clc
v=VideoReader('MysteryText.mp4'); %read any video file
while hasFrame(v) %loop as long as there is an unread frame
    frame = readFrame(v); %get the next frame as an RGB image
    [BW,maskedRGBImage] = orangemask(frame); %creating orange filter
    RcO=findCentroid(BW);
    imshow(frame);%show the current frame
    hold on
     if (~isempty(RcO))
         plot(RcO(1),RcO(2),'w.')%plots the x,y of the centroid for each frame
     end
     drawnow 
end
