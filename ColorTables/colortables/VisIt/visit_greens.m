function cmapOut = visit_greens(m)
% visit_greens
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0.968627450980392 0.988235294117647 0.96078431372549;0.898039215686275 0.96078431372549 0.87843137254902;0.780392156862745 0.913725490196078 0.752941176470588;0.631372549019608 0.850980392156863 0.607843137254902;0.454901960784314 0.768627450980392 0.462745098039216;0.254901960784314 0.670588235294118 0.364705882352941;0.137254901960784 0.545098039215686 0.270588235294118;0 0.427450980392157 0.172549019607843;0 0.266666666666667 0.105882352941176];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);