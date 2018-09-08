% Ozhan Turgut
% Advance Matlab - following MATLAB Documentation
% 09/07/2018

% Unit test for right_tri.m

% Test triangles 
tri  = [7 9];
tri2 = [4 4];
tri3 = [2 2*sqrt(3)];
tri4 = [1 1000];

% Preconditions
angles = right_tri(tri);
assert(angles(3) == 90, 'Fundamental problem, right_tri not producing right triangle')

%% Test 1: sum of angles
angles = right_tri(tri);
assert(sum(angles) == 180)

angles = right_tri(tri2);
assert(sum(angles) == 180)

angles = right_tri(tri3);
assert(sum(angles) == 180)

angles = right_tri(tri4);
assert(sum(angles) == 180)

%% Test 2: isoceles triangle
angles = right_tri(tri2);
assert(angle(1) == 45)
assert(angle(2) == angle(1),'Problem with isoceles')

%% Test 3: 30-60-90 triangle
angles = right_tri(tri3);
assert(angle(1) == 30)
assert(angle(2) == 60)
assert(angle(3) == 90)

%% Test 4: small angle assumption
angles = right_tri(tri4);
small_angle = (pi/180) * angles(1);
approx = sin(small_angle);
assert(small_angle == approx, 'Problem with small angle')

