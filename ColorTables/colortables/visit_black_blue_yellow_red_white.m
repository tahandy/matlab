function cmapOut = visit_black_blue_yellow_red_white(m)
% visit_black_blue_yellow_red_white
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0 0 0;0.145121452143299 0 0.464388646858556;0.405713848490021 0.169545783505306 0.585143287640595;0.855797650631796 0.617321463584816 0.141983851685616;0.805771607805031 0.258380205914505 0;1 1 1];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
