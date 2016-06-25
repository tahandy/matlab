function cmapOut = visit_ylorbr(m)
% visit_ylorbr
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [1 1 0.898039215686275;1 0.968627450980392 0.737254901960784;0.996078431372549 0.890196078431372 0.568627450980392;0.996078431372549 0.768627450980392 0.309803921568627;0.996078431372549 0.6 0.16078431372549;0.925490196078431 0.43921568627451 0.0784313725490196;0.8 0.298039215686275 0.00784313725490196;0.6 0.203921568627451 0.0156862745098039;0.4 0.145098039215686 0.0235294117647059];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
