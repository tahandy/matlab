function write_color_table(ctPos, ctVal, filename)
%WRITE_COLOR_TABLE Write Matlab color table from control points.
%   WRITE_COLOR_TABLE(POS,VAL,FILENAME) writes the Matlab color table
%   generated from the arrays POS and VAL. POS is an array of size N
%   providing the location of the control points on the interval [0,1]. VAL
%   is an array of size Nx3 denoting the RGB colors in the range [0, 255].
%   FILENAME is the full path to the destination color table. 
%
%   Note that the color table will be named based on the file part of
%   FILENAME. For example, if FILENAME='/home/you/myColorTable.m', you
%   would use the color table via colormap(myColorTable).
%
%   Author: Tim Handy, University of Michigan
%   Date: June 22, 2016

% Create a 256 element color table via interpolation from
% the provided control points and values. We'll create a giant
% string that holds the color table array (in cmStr);
% N = 256;
N = size(ctPos,1);
cmPos = linspace(0,1,N);
cmVal = interp1(ctPos,ctVal,cmPos)/255;
cmVal = max(zeros(size(cmVal)),min(ones(size(cmVal)),cmVal));
cmStr = mat2str(cmVal);


% Write the file, including headers and Matlab code.
[fid, errmsg] = fopen(filename,'w+');
if(fid==-1)
    fprintf(2,'Unable to write color table to file \"%s\"\n',filename);
    fprintf(2,'System returned error: %s\n',errmsg);
    return
end

% Get the function name as a the base name of the output file.
[~,funcName,~] = fileparts(filename);

% Write the colormap function. Note that cmStr is used as the value to
% the cmap var in the resulting code.
fprintf(fid,'function cmapOut = %s(m)\n',funcName);
fprintf(fid,'%% %s\n',funcName);
fprintf(fid,'%%\tSee also HSV, HOT, PINK, FLAG, COLORMAP, RGBPLOT.\n');
fprintf(fid,'cmap = %s;\n',cmStr);
fprintf(fid,'if(nargin < 1)\n');
fprintf(fid,'   m = size(get(gcf,''colormap''),1);\n');
fprintf(fid,'end\n');
fprintf(fid,'cmapOut = zeros(m,3);\n');
fprintf(fid,'x  = linspace(0,1,size(cmap,1));\n');
fprintf(fid,'xq = linspace(0,1,m);\n');
fprintf(fid,'cmapOut(:,1) = interp1(x,cmap(:,1),xq);\n');
fprintf(fid,'cmapOut(:,2) = interp1(x,cmap(:,2),xq);\n');
fprintf(fid,'cmapOut(:,3) = interp1(x,cmap(:,3),xq);\n');

% Cleanup
fclose(fid);