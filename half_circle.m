% Ozhan Turgut
% Advance Matlab - following Loren on the Art of MATLAB
% 09/04/2018

% Note it does not use feval, instead it uses fh directly!

function y = half_circle(fh,n)
if nargin < 2
    n = 20;
end
y = fh(0:pi/n:pi);


