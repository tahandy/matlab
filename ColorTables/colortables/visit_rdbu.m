function cmapOut = visit_rdbu(m)
% visit_rdbu
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0.403921568627451 0 0.12156862745098;0.698039215686274 0.0941176470588235 0.168627450980392;0.83921568627451 0.376470588235294 0.301960784313725;0.956862745098039 0.647058823529412 0.509803921568627;0.992156862745098 0.858823529411765 0.780392156862745;0.968627450980392 0.968627450980392 0.968627450980392;0.819607843137255 0.898039215686275 0.941176470588235;0.572549019607843 0.772549019607843 0.870588235294118;0.262745098039216 0.576470588235294 0.764705882352941;0.129411764705882 0.4 0.674509803921569;0.0196078431372549 0.188235294117647 0.380392156862745];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
