function [x, iter] = gauss_seidel_iteration_mvp(A, b, tol, max_iter)
   
    % Extract the lower triangular part of A
    E = tril(A);
    
    % Initial guess (zero vector)
    x = zeros(size(b));
    
    % Iterate for a maximum number of iterations
    for iter = 1:max_iter
        % Compute the residual r = b - A*x using matrix-vector product
        r = b - mvp(A, x); 
        
        % Solve E * y = r using forward substitution
        y = forward_sub(E, r);
        
        % Update the solution x
        x_new = x + y;
        
        % Check for convergence (if the norm of the change is within tolerance)
        if norm(x_new - x, inf) < tol
            disp(['Converged after ', num2str(iter), ' iterations.']);
            x = x_new;
            return;
        end
        
        % Update the solution for the next iteration
        x = x_new;
    end
    
    % If we reach this point, it means maximum iterations were reached
    disp('Maximum iterations reached without convergence.');
end

% Define the matrix-vector product function
function result = mvp(A, x)
    result = A * x;
end

% Define the forward substitution function
function y = forward_sub(A, b)
    n = length(b);
    y = zeros(n, 1);
    
    for k = 1:n
        y(k) = (b(k) - A(k, 1:k-1) * y(1:k-1)) / A(k, k);
    end
end
