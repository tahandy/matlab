function cmapOut = visit_hot_desaturated_blacklow_whitehigh(m)
% visit_hot_desaturated_blacklow
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.

cmap = [0,     0,   0;
        0,     0,  91;
        0,   255, 255;
        0,   127,   0;
        255, 255,   0;
        255,  96,   0;
        107,   0,   0;
        224,  76,  76;
        255, 255, 255]/255;
cpts = linspace(0,1,9);
    
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
xq = linspace(0,1,m);
cmapOut(:,1) = pchip(cpts,cmap(:,1),xq);
cmapOut(:,2) = pchip(cpts,cmap(:,2),xq);
cmapOut(:,3) = pchip(cpts,cmap(:,3),xq);
