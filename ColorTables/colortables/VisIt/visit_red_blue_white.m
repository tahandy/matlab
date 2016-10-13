function cmapOut = visit_red_blue_white(m)
% visit_red_blue_white
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0.501960784313725 0 0;0.999999003923561 0.999998000004 0.999998000004;0.164705835294212 0.164706392155843 0.164706996076204;0.141176470588235 0.419607843137255 0.72156862745098;0.270587976471106 0.815685482354525 0.290196941174745;1 0.780390596081553 0;1 0 0];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
