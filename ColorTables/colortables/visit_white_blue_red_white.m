function cmapOut = visit_white_blue_red_white(m)
% visit_white_blue_red_white
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0.92156862745098 0.92156862745098 0.92156862745098;0.541530636584708 0.273257201513595 0.486682862702386;0.982298752466199 0.666557981838618 0.0187905550743424;0.881360031034468 0.166269076176405 0;1 1 1];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
