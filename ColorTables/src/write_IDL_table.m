function write_IDL_table(ctPos, ctVal, filename)
%WRITE_IDL_TABLE Write IDL color table from control points.
%   WRITE_IDL_TABLE(POS,VAL,FILENAME) writes the IDL color table
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

cmPos = ctPos*255;
cmRed = ctVal(:,1);
cmGrn = ctVal(:,2);
cmBlu = ctVal(:,3);
if(size(cmRed,1)>size(cmRed,2))
    cmRed = cmRed';
end
if(size(cmGrn,1)>size(cmGrn,2))
    cmGrn = cmGrn';
end
if(size(cmBlu,1)>size(cmBlu,2))
    cmBlu = cmBlu';
end
if(size(cmPos,1)>size(cmPos,2))
    cmPos = cmPos';
end

cmPosStr = strrep(mat2str(cmPos),' ',', ');
cmRedStr = strrep(mat2str(cmRed),' ',', ');
cmGrnStr = strrep(mat2str(cmGrn),' ',', ');
cmBluStr = strrep(mat2str(cmBlu),' ',', ');

% Write the file, including headers and IDL code.
[fid, errmsg] = fopen(filename,'w+');
if(fid==-1)
    fprintf(2,'Unable to write color table to file \"%s\"\n',filename);
    fprintf(2,'System returned error: %s\n',errmsg);
    return
end

% Get the function name as a the base name of the output file.
[~,funcName,~] = fileparts(filename);

% Write the colormap function
fprintf(fid,'PRO %s, red, green, blue\n',funcName);
fprintf(fid,'; %s\n',funcName);
fprintf(fid,'red   = Interpol(%s,%s,Findgen(256))\n',cmRedStr,cmPosStr);
fprintf(fid,'green = Interpol(%s,%s,Findgen(256))\n',cmGrnStr,cmPosStr);
fprintf(fid,'blue  = Interpol(%s,%s,Findgen(256))\n',cmBluStr,cmPosStr);
fprintf(fid,'END\n');

% Cleanup
fclose(fid);