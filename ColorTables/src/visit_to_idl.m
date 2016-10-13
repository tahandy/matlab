%VISIT_TO_IDL Scan all provided VisIt color tables and convert
%   them to IDL color tables. Requires executing an additional script
%   inside IDL. 
%
%   Author: Tim Handy, University of Michigan
%   Date: Oct 05, 2016

clear all; close all; clc;
visitPath    = '../VisIt';
outputPath   = '../colortables/IDL';
idlTableName = 'visit.tbl';

% Get all visit .ct files
ctList = dir(fullfile(visitPath,'*.ct'));

% Open the file for the IDL script which will actually build the *.tbl
% file from the *.pro files created for each VisIt colortable.
scriptName = fullfile(outputPath,'create_visit_table.pro');
[fid, errmsg] = fopen(scriptName,'w+');
if(fid==-1)
    fprintf(2,'Unable to write color table to file \"%s\"\n',filename);
    fprintf(2,'System returned error: %s\n',errmsg);
    return
end

fprintf(fid,'PRO create_visit_table\n');
fprintf(fid,';!PATH = EXPAND_PATH(''<IDL_DEFAULT>:+/Users/timhandy/code/workspace/matlab/ColorTables/colortables/IDL'')\n');
fprintf(fid,'tblDefault = ''/tmp/visit.tbl''\n');
fprintf(fid,'tblRead = ''''\n');
fprintf(fid,'READ,tblRead,PROMPT=''Enter output table name (default ''+tblDefault+''): ''\n');
fprintf(fid,'tblFile = tblDefault\n');
fprintf(fid,'IF(strlen(tblRead) GT 0) THEN BEGIN\n');
fprintf(fid,'tblFile = tblRead\n');
fprintf(fid,'ENDIF\n');
fprintf(fid,'tableExists = FILE_TEST(tblFile)\n');
fprintf(fid,'IF(tableExists) THEN BEGIN\n');
fprintf(fid,'doOverwriteStr = ''''\n');
fprintf(fid,'READ,doOverwriteStr,PROMPT=''Table file (''+tblFile+'') exists! Overwrite? (y/n): ''\n');
fprintf(fid,'IF(strcmp(doOverwriteStr,''n'',1,/FOLD_CASE)) THEN BEGIN\n');
fprintf(fid,'PRINT,''Aborting.''\n');
fprintf(fid,'RETURN\n');
fprintf(fid,'ENDIF ELSE BEGIN\n');
fprintf(fid,'PRINT,''Overwriting ''+tblFile\n');
fprintf(fid,'ENDELSE\n');
fprintf(fid,'ENDIF\n');
fprintf(fid,'GET_LUN,IUNIT\n');
fprintf(fid,'OPENW,IUNIT, tblFile, /BLOCK\n');
fprintf(fid,'WRITEU, IUNIT, 1b\n');
fprintf(fid,'WRITEU, IUNIT, BYTARR(256)\n');
fprintf(fid,'WRITEU, IUNIT, BYTARR(256)\n');
fprintf(fid,'WRITEU, IUNIT, BYTARR(256)\n');
fprintf(fid,'tmp = bytarr(32)+32B\n');
fprintf(fid,'tmp[0:strlen(''Empty'')-1]=byte(''Empty'')\n');
fprintf(fid,'WRITEU, IUNIT, tmp\n');
fprintf(fid,'FREE_LUN, IUNIT\n');

for i=1:numel(ctList)
    % Do some path stuff
    % We convert to the VisIt name to lowercase, otherwise colormap(...)
    % complains because they do a lower internally.
    % Additionally, replace all dashes with underscores, and then make sure
    % there is only 1 underscore (e.g. no '__' in the name).
    fnm = ctList(i).name;
    xmlfilename = fullfile(visitPath,fnm);
    [~,tablenameold,~] = fileparts(xmlfilename);
    
    tablenamebase = sprintf('visit_%s',lower(tablenameold));
    tablenamebase = regexprep(strrep(tablenamebase,'-','_'),'_+','_');
    tablenamenew  = sprintf('%s.pro',lower(tablenamebase));
    cmapfilename  = fullfile(outputPath,tablenamenew);
    
    % Diagnostics
    fprintf('Writing color table %s\n',tablenamenew);
    
    % Extract VisIt color table control points, and export them
    % into a Matlab function
    [pos, val] = parse_visit_ct(xmlfilename);
    write_IDL_table(pos, val, cmapfilename);
    
    fprintf(fid,'%s,red,green,blue\n',tablenamebase);
    fprintf(fid,'MODIFYCT, %d, ''%s'', red, green, blue, FILE=tblFile\n',i,tablenamebase(7:min(numel(tablenamebase),32+7)));
    
end

fprintf(fid,'END\n');
fclose(fid);


