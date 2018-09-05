% Ozhan Turgut
% Advance Matlab - following Loren on the Art of MATLAB
% 09/04/2018

% Sinc calculation and divide by 0

% Slow
tic
x = linspace(-1,1,50);
y = ones(size(x));
i = find(x);
y(i) = sin(pi*x(i))./(pi*x(i));
toc

% Faster
tic 
x = linspace(-1,1,50);
i = find(x==0);
x(i) = 1;
y = sin(pi*x)./(pi*x);
y(i) = 1;
toc

% Very fast
tic
x = linspace(-1,1,50);
y = sin(pi*x)./(pi*x);
y(x==0) = 1; 
toc
