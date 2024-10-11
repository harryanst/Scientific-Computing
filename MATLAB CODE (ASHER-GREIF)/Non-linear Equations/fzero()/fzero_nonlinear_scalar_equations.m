% Define the function
f = @(x) x^2 - 4;

% Use fzero with a bracketing interval [-3, 0]
root = fzero(f, [-3, 0]);

% Display the result
disp(root);
