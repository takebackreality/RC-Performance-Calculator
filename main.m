% main.m - Aircraft Performance Calculator
clear; clc;

% Aircraft parameters
W = 60000; % N
S = 30; % wing area [m^2]
CD0 = 0.02; 
k = 0.05;
rho = 1.225; % air density [kg/m^3]
V = 70:5:200; % speed range [m/s]

% Compute L/D across speeds
[LoverD, CL, CD] = calcLiftDrag(V,W,S,rho,CD0,k);

% Find best Range and Endurance speeds
[bestRange, maxLD] = calcRange(V,LoverD);
[bestEndurance, minPower] = calcEndurance(V,W,S,rho,CD0,k);

% Display results
fprintf('Best Range Speed: %.2f m/s (L/D max = %.2f)\n', bestRange, maxLD);
fprintf('Best Endurance Speed: %.2f m/s (Min Power Req = %.2f W)\n', bestEndurance, minPower);

% Plot
figure; plot(V,LoverD,'b','LineWidth',2); grid on;
xlabel('Velocity [m/s]'); ylabel('L/D');
title('Lift-to-Drag Ratio vs Velocity');
