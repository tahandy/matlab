function cmapOut = visit_rainbow_pakmor(m)
% visit_rainbow_pakmor
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0 0 0;0 0 0.242729098185145;0 0.137254901960784 0.53921568627451;0 0.338235676469824 0.541175388237459;0 0.529411764705882 0;0.588234117649412 0.720587852941941 0;0.72156862745098 0.392156862745098 0;0.567524702774898 0 0;0.356862745098039 0 0];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
