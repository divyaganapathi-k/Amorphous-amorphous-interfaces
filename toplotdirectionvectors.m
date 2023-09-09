centroid=[];
centroid=stats1.Centroid;
Length=stats1.MajorAxisLength;
Angle=stats1.Orientation;
U=Length.*cos(Angle);
V=Length.*sin(Angle);
quiver(centroid(:,1),centroid(:,2),U,V);