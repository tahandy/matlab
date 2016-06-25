function cmapOut = visit_orangehot_bot(m)
% visit_orangehot_bot
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [1 1 1;1 0.90747649468058 0.537382473402901;1 0.685028632307897 0;1 0.0191610067918499 0;0.551226274903286 0 0;0.211782719570157 0 0;0 0 0];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
