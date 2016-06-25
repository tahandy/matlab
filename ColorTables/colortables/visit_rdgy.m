function cmapOut = visit_rdgy(m)
% visit_rdgy
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0.403921568627451 0 0.12156862745098;0.698039215686274 0.0941176470588235 0.168627450980392;0.83921568627451 0.376470588235294 0.301960784313725;0.956862745098039 0.647058823529412 0.509803921568627;0.992156862745098 0.858823529411765 0.780392156862745;1 1 1;0.87843137254902 0.87843137254902 0.87843137254902;0.729411764705882 0.729411764705882 0.729411764705882;0.529411764705882 0.529411764705882 0.529411764705882;0.301960784313725 0.301960784313725 0.301960784313725;0.101960784313725 0.101960784313725 0.101960784313725];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);