function cmapOut = visit_black_blue_red_white(m)
% visit_black_blue_red_white
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0 0 0;0.130017725316492 0 0.385719251772261;0.294684919200302 0 0.596389574566301;0.606788431451175 0 0.062212409367691;1 1 1];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
