function cmapOut = visit_hot_desaturated_blacklow(m)
% visit_hot_desaturated_blacklow
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0 0 0;0 0 0.35650623885918;0 0.997510115157174 0.995039682539682;0 0.49953314659197 0.00297619047619058;1 0.998131280484222 0;0.998840375310963 0.375718399247811 0;0.420066208301502 0.000297741474211997 0.000297741474211997;0.87843137254902 0.298039215686275 0.298039215686275];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
