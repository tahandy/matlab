function cmapOut = visit_hot_pakmor(m)
% visit_hot_pakmor
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0 0 0;0 0 0.211654005776496;0 0.121074673802936 0.517719097436226;0 0.334817043240384 0.550852749994641;0 0.529411764705882 0;0.588234117649412 0.720587852941941 0;0.715809749139576 0.35616387329882 0;0.529752205201201 0 0;0.356862745098039 0 0];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
