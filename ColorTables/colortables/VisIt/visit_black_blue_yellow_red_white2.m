function cmapOut = visit_black_blue_yellow_red_white2(m)
% visit_black_blue_yellow_red_white2
%	See also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.
cmap = [0 0 0;0.573404258167109 0.451473467637321 0.299883836167856;0.168150987440207 0.885966571735951 0.841512862412678;0.73469663615649 0.884753468838198 0.26530336384351;0.815925907935429 0.315458190983523 0;0.777106158830437 0.242160940023486 0.242160940023486;0.904693883492963 0.675959203876074 0.675959203876074;1 1 1];
if(nargin < 1)
   m = size(get(gcf,'colormap'),1);
end
cmapOut = zeros(m,3);
x  = linspace(0,1,size(cmap,1));
xq = linspace(0,1,m);
cmapOut(:,1) = interp1(x,cmap(:,1),xq);
cmapOut(:,2) = interp1(x,cmap(:,2),xq);
cmapOut(:,3) = interp1(x,cmap(:,3),xq);
