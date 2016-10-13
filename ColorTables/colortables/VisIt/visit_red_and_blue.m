function cmapOut = visit_red_and_blue(m)
% visit_red_and_blue
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [1 0 0;0 0 1];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
