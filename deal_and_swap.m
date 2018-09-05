% Ozhan Turgut
% Advance Matlab - following Loren on the Art of MATLAB
% 09/04/2018

% Deal and anonymous function swap

A = 10;
B = 20;

[B, A] = deal(A,B)

swap = @(varargin)varargin{nargin:-1:1};

a = 1;
b = 2;
c = 3;
d = 4;

[a, b, c, d] = swap(a, b, c, d)