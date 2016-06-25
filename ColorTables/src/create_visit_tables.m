%CREATE_VISIT_TABLES Scan all provided VisIt color tables and convert
%   them to Matlab color tables.
%
%   Author: Tim Handy, University of Michigan
%   Date: June 22, 2016

clear all; close all; clc;
visitPath   = '../VisIt';
outputPath  = '../colortables';

% Get all visit .ct files
ctList = dir(fullfile(visitPath,'*.ct'));

for i=1:numel(ctList)
    % Do some path stuff
    % We convert to the VisIt name to lowercase, otherwise colormap(...)
    % complains because they do a lower internally 
    fnm = ctList(i).name;
    xmlfilename = fullfile(visitPath,fnm);
    [~,tablenameold,~] = fileparts(xmlfilename);
    tablenamenew = sprintf('visit_%s.m',lower(tablenameold));
    cmapfilename = fullfile(outputPath,tablenamenew);
    
    % Diagnostics
    fprintf('Writing color table %s\n',tablenamenew);
    
    % Extract VisIt color table control points, and export them
    % into a Matlab function
    [pos, val] = parse_visit_ct(xmlfilename);
    write_color_table(pos, val, cmapfilename);    
end