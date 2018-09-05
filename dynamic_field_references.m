% Ozhan Turgut
% Advance Matlab - following Loren on the Art of MATLAB
% 09/04/2018

fldnm = 'fred';
s.(fldnm) = 18;
y = s.(fldnm)

% s = setfield(s, fldnm, 3);
% s.(fldnm) = 3;
% The first one requires two copies of the struct.
