function [cpPos, cpVal] = parse_visit_ct(filename)
%PARSE_VISIT_CT Parse color tables provided by VisIt.
%   [POS, VAL] = PARSE_VISIT_CT(FILENAME) returns the arrays POS and
%   VAL corresponding to the VisIt color table control point position and
%   value (color). POS is of size N, while VAL is of size Nx3, where N
%   is the number of control points in the color table. FILENAME is the
%   full path to the VisIt '.ct' file to process.
%
%   Note: Uses the xml2struct package.
%
%   Author: Tim Handy, University of Michigan
%   Date: June 22, 2016

s = xml2struct(filename);
numctrlpts = numel(s.Object.Object.Object);
cntlptlist = cell(0);
for i=1:numctrlpts
    cntlptlist{i} = s.Object.Object.Object{i};
end

cpPos = zeros(numctrlpts,1);
cpVal = zeros(numctrlpts,3);

for i=1:numctrlpts
    % If there is only one field, either the position or the colors are 0.
    % If there are two Field values, colors are the first field, and 
    %   position is the second field.
    % If there are no fields (the Fields member doesn't exist), then we're
    % a pos=0 black control point. 
    
    % Figure out if either of the fields should be zero
    isZeroPos = false;
    isZeroVal = false;
    if(isfield(cntlptlist{i},'Field'))
        if(numel(cntlptlist{i}.Field)==1)
            if(strcmp('colors',cntlptlist{i}.Field.Attributes.name))
                isZeroPos = true; 
            elseif(strcmp('position',cntlptlist{i}.Field.Attributes.name))
                isZeroVal = true;
            else
                fprintf(2,'[parse_visit_ct] Unable to handle Field case\n');
                return
            end
        elseif(numel(cntlptlist{i}.Field)>2)
            fprintf(2,'[parse_visit_ct] Number of fields >2. Not sure if the remainder works\n');
            return
        end
    else
        isZeroPos = true;
        isZeroVal = true;
    end
        
    % Set the position. 
    % If we're zeroing the position, we set the control point position to
    %   zero. 
    % If we're zeroing the value (&& ~isZeroPos), the Field member isn't an array;      
    %   therefore, we need to be careful when using it. 
    % If we're a normal control point, extract the position from field 2
    if(isZeroPos)
        cpPos(i) = 0.e0;
    elseif(isZeroVal)
        cpPos(i) = str2double(cntlptlist{i}.Field.Text);
    else
        cpPos(i) = str2double(cntlptlist{i}.Field{2}.Text);
    end
        
    % Extract the colors. 
    % If we're zeroing the color, we'll set tmp to be the zero color
    %   string.
    % If we're zeroing the position (&& ~isZeroVal), the Field member isn't an array;      
    %   therefore, we need to be careful when using it. 
    % If we're a normal control point, extract the colors from field 1    
    if(isZeroVal)
        tmp = '0 0 0 0';
    elseif(isZeroPos)
        tmp = cntlptlist{i}.Field.Text;
    else
        tmp = cntlptlist{i}.Field{1}.Text;
    end
    tmp = str2double(regexp(strtrim(tmp),'\s+','split'));
    cpVal(i,:) = tmp(1:3); % Ignore alphas    
end

% This isn't the end. If the control points do not lie at 0.0 and 1.0,
% VisIt will extend the first/last available colors to the positions 0.0
% and 1.0. So, we'll do this now.

% If the first control point position is greater than zero, we'll prepend
% pos=0 and copy the first available color to the start of cpVal.
if(cpPos(1)>0.e0)
    cpPos(2:end+1) = cpPos(1:end);
    cpPos(1) = 0.e0;
    
    cpVal(2:end+1,:) = cpVal(1:end,:);
    cpVal(1,:) = cpVal(2,:);
end

% If the last control point position is less than one, we'll append
% pos=1 and copy the last available color to the end of cpVal.
if(cpPos(end)<1.e0)
    cpPos(end+1) = 1.e0;
    cpVal(end+1,:) = cpVal(end,:);
end
    
    
    
    

