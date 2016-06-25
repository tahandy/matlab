function cmapOut = visit_black_yellow_red(m)
% visit_black_yellow_red
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0 0 0;0.468263012191847 0.128291236216944 0;0.919414550047303 0.841047048258441 0;0.873191135802293 0.730531163579873 0;0.717647058823529 0.4 0];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
