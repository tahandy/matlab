function cmapOut = visit_red_orange_white(m)
% visit_red_orange_white
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0.807843137254902 0 0.223529411764706;0.423529411764706 0 0.403921568627451;0.882352941176471 0.247058823529412 0.101960784313725;1 0.847058823529412 0;1 1 1];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
