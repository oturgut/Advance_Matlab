% Ozhan Turgut
% Advance Matlab - following Loren on the Art of MATLAB
% 09/04/2018

% Test for the half_circle function

ys = half_circle(@sin);
yc = half_circle(@cos);

figure
plot(ys)
hold on
plot(yc, 'r')

figure
plot(ys,yc)