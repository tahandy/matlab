function cmapOut = visit_blues(m)
% visit_blues
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0.968627450980392 0.984313725490196 1;0.870588235294118 0.92156862745098 0.968627450980392;0.776470588235294 0.858823529411765 0.937254901960784;0.619607843137255 0.792156862745098 0.882352941176471;0.419607843137255 0.682352941176471 0.83921568627451;0.258823529411765 0.572549019607843 0.776470588235294;0.129411764705882 0.443137254901961 0.709803921568627;0.0313725490196078 0.317647058823529 0.611764705882353;0.0313725490196078 0.188235294117647 0.419607843137255];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);