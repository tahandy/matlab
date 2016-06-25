%CREATE_COLOR_TABLE_SAMPLE Provide a PDF file of all available VisIt color
%   tables in their Matlab form.
%
%   Note: Uses the export_fig and freezeColors packages.
%   
%   Author: Tim Handy, University of Michigan
%   Date: June 22, 2016

clear all; close all; clc;

ctPath = '../colortables';
sampleFile = '../sample.pdf';
addpath(ctPath)
addpath('freezeColors');
addpath('export_fig');

% Get all Matlab color tables. Assumes no non-color table Matlab files
% inside ctPath
ctList  = dir(fullfile(ctPath,'*.m'));
ctCount = numel(ctList);
ctPerPage = 5;
ctBnds = 1:ctPerPage:ctCount;

pxPerSamp = 200;
pxWidth   = 600;
aspect    = pxWidth/pxPerSamp;
[X,Y] = ndgrid(linspace(0,1,pxWidth),linspace(0,1,pxPerSamp));
Z = Y;

fig = figure(1);
set(fig,'color','white','position',[680, 558, pxWidth,ctPerPage*pxPerSamp])

% Open sample.pdf in order to reset it to an empty file
fid = fopen(sampleFile,'w');
fclose(fid);

for j=1:numel(ctBnds)
    clf;
    for i=ctBnds(j):min(ctBnds(j)+ctPerPage-1,ctCount)

        [~,ctFunc,~] = fileparts(ctList(i).name);

        subplot(ctPerPage,1,i-ctBnds(j)+1)
        imagesc(Z);
        axis fill
        shading interp
        set(gca,'fontname','times','fontsize',16)
        set(gca,'ytick',[],'xtick',[],'box','on')
        title(strrep(ctFunc,'_','\_'))

        colormap(feval(ctFunc,256))
        freezeColors
    end

    export_fig(sampleFile,'-append','-nocrop')
end
