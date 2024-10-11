% Define the system of equations and its Jacobian
function [F, J] = system_of_eqs(x)
    % x(1) corresponds to x1, and x(2) corresponds to x2
    x1 = x(1);
    x2 = x(2);
    
    % System of equations
    F = [x1^2 - 2*x1 - x2 + 1;  % f1(x1, x2)
         x1^2 + x2^2 - 1];      % f2(x1, x2)
     
    % Jacobian matrix
    J = [2*x1 - 2, -1;         % Partial derivatives of f1 w.r.t x1 and x2
         2*x1, 2*x2];          % Partial derivatives of f2 w.r.t x1 and x2
end
