clear all
close all
clc
v=VideoReader('MysteryText.mp4') %read any video file
while hasFrame(v) %loop as long as there is an unread frame
    frame = readFrame(v); %get the next frame as an RGB image
    imshow(frame)%show the current frame
end