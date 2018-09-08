% Ozhan Turgut
% Advance Matlab - following MATLAB Documentation
% 09/07/2018

% Function for unit test.

function angles = right_tri(sides)
% Function to calculate angles for a right triangle.

A = atand(sides(1)/sides(2));
B = atand(sides(2)/sides(1));
hypotenuse = sides(1)/sind(A);
C = asind(hypotenuse*sind(A)/sides(1));
angles = [A, B, C];
end