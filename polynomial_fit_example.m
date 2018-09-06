% Ozhan Turgut
% Advance Matlab - following MATLAB Documentation
% 09/05/2018

% Polynomial Fit

load census;
fitpoly2 = fit(cdate, pop, 'poly2');
plot(fitpoly2, cdate, pop)
legend('Location','Best')

% Fit options
fitpoly3 = fit(cdate, pop, 'poly3', 'Normalize','on','Robust','on')
figure
plot(fitpoly3, cdate, pop)
legend('Location','Best')
fitoptions poly3

[fitpoly3, gof] = fit(cdate, pop, 'poly3', 'Normalize','on','Robust','on')

% Beyond the data range
figure
plot(cdate, pop,'o')
xlim([1900, 2050]);
hold on
plot(fitpoly3)
hold off

% Plot confidence bounds
figure
plot(fitpoly3, cdate, pop, 'predobs')