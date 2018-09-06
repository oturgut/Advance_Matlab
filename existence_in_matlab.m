% Ozhan Turgut
% Advance Matlab - following Loren on the Art of MATLAB
% 09/05/2018

% Speed gain with second argumenent in "exist"
varname = '';
while isempty(varname)
    varname = input('Which variable would you like to process?','s');
    if ~exist(varname, 'var')
        varname = '';
    end
end