function cmapOut = visit_rdpu(m)
% visit_rdpu
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [1 0.968627450980392 0.952941176470588;0.992156862745098 0.87843137254902 0.866666666666667;0.988235294117647 0.772549019607843 0.752941176470588;0.980392156862745 0.623529411764706 0.709803921568627;0.968627450980392 0.407843137254902 0.631372549019608;0.866666666666667 0.203921568627451 0.592156862745098;0.682352941176471 0.00392156862745098 0.494117647058824;0.47843137254902 0.00392156862745098 0.466666666666667;0.286274509803922 0 0.415686274509804];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
