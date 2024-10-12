clear;
clc;

n = 10000;    % matrix 10.000 x 10.000
A = rand(n);
U = triu(A);

b = [14 24 16]';


tic;
x = backsub_slow(U,b)
time_slow = toc; % Stop the timer
disp(['Time for version with 2 for loops: ', num2str(time_slow), 'seconds']);

tic;
y = backsub(U,b)
time_fast = toc;
disp(['Time for vectorized version: ', num2str(time_fast), 'seconds']);
