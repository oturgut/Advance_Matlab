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

% NOTE THIS : The result is not 1 as MATLAB cannot guarantee that 
% the frozen values of non variables are same.
A = 5;
h1 = @(x)A * x.^2;
h2 = @(x)A * x.^2;
isequal(h1,h2)

% NOTE THIS
h1 = @(x)A * x.^2;
h2 = h1;
isequal(h1,h2) % Answer is 1

