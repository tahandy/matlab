function cmapOut = visit_black_yellow_red_white(m)
% visit_black_yellow_red_white
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0 0 0;0.366431152592203 0.100392096600604 0;0.744930518537728 0.496881298033133 0;0.968530593071771 0.914034790830205 0;0.851576558218185 0.594550598059433 0;1 1 1];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
