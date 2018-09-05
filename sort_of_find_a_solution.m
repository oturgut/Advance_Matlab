% Ozhan Turgut
% Advance Matlab - following Loren on the Art of MATLAB
% 09/04/2018

x = rand(1,100);

% find three occurances 

n = 3;
xTrue = find(x>.5, n);

if ~isempty(find(x>.5, 1))
    display('Not empty')
end
