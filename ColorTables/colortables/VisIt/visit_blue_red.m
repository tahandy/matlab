function cmapOut = visit_blue_red(m)
% visit_blue_red
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0 0 1;0.519607843137255 0.141176470588235 0.336601307189543;0.903921568627451 0.705882352941176 0.0673202614379085;1 0 0];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
