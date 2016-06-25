function cmapOut = visit_test(m)
% visit_test
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0 0 1;0.294403934381167 0 0.705596065618833;1 0 0;1 0 0];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
