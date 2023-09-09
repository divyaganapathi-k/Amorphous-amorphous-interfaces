meanradius2 = reshape(strtrim(cellstr(num2str(meanradius(:)))), size(meanradius));
f=(meanradius(:,1)>=(meanr-25) & meanradius(:,1)<=(meanr+25)); 
meanradius2(f,1:2) = strcat('<html><span style="color: #FF0000; font-weight: bold;">',meanradius2(f,1:2),'</span></html>');
h = figure;
hh= uitable('Parent',h, 'Units','normalized', 'Position',[0.05 0.05 0.9 0.9]);
set(hh, 'Data',meanradius2)