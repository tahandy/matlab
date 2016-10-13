function cmapOut = visit_white_blue_red(m)
% visit_white_blue_red
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [1 1 1;0 0 0.735473804800861;0 0 0.928341818274139;0.346609442623668 0 0.532352339317273;0.798515840203829 0 0;1 0 0];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
