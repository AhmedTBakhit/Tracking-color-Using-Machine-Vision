function center=findCentroid(bwImage)
    stats=regionprops(bwImage); %analyze the white regions in the bwRed
    cen=cat(1,stats.Centroid);%extract the centroids of the (white) regions into an array
    a=cat(1,stats.Area);%extract the areas of the (white) regions into an array
    [x,y]=max(a); %find the region with the largest area. It's index is y.
    %This prevents small "noise" regions to be discarded
    center=cen(y,:);
end